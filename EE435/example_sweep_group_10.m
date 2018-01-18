% RTL-SDR PARAMETERS
tic
start_freq          = 200e6;         % sweep start frequency
stop_freq           = 400e6;         % sweep stop frequency
rtlsdr_id           = '0';           % RTL-SDR stick ID, (do not change)
rtlsdr_fs           = 2400000;       % RTL-SDR sampling rate in Hz, (you should decide on which sampling rate to choose!)
rtlsdr_gain         = 20;            % RTL-SDR tuner gain in dB (you may change)

rtlsdr_frmlen       = 1024;          % RTL-SDR output data frame size (you should decide, it should be a multiple of 256,
                                     % it is the number of samples
                                     % retrieved from the RTL device upon
                                     % invoking the function
                                     % step(obj_rtlsdr)
                                     
rtlsdr_datatype     = 'single';      % RTL-SDR output data type (do not change)
rtlsdr_ppm          = 0;             % RTL-SDR tuner parts per million correction (do not change)
nfrmhold            = 3;             % number of frames to receive (you should decide on its value, in each frame there are rtlsdr_frmlen samples)
nfrmdump            = 100;           % number of frames to dump after retuning (to clear buffer, do not change)


rtlsdr_tunerfreq  = start_freq:rtlsdr_fs:stop_freq;     % range of tuner frequency in Hz, at each iteration, 
                                                        % the frequency band (passband) that can be observed is as large 
                                                        % as the sampling
                                                        % rate (twice the
                                                        % baseband bandwidth)
                                                        
nretunes = length(rtlsdr_tunerfreq);                    % calculate number of retunes required

obj_rtlsdr = comm.SDRRTLReceiver(...
            rtlsdr_id,...
            'CenterFrequency',      rtlsdr_tunerfreq(1),...
            'EnableTunerAGC', 		false,...
            'TunerGain', 			rtlsdr_gain,...
            'SampleRate',           rtlsdr_fs, ...
            'SamplesPerFrame', 		rtlsdr_frmlen,...
            'OutputDataType', 		rtlsdr_datatype ,...
            'FrequencyCorrection', 	rtlsdr_ppm );

for c = 1:1:nretunes
    obj_rtlsdr.CenterFrequency = rtlsdr_tunerfreq(c);
    for frm = 1:1:nfrmdump
        % fetch a frame from the rtlsdr stick
        rtlsdr_data = step(obj_rtlsdr);     % These frames will be dumped to clear buffer
    end
    for kk=1:nfrmhold  
    rtlsdr_data(:,kk) = step(obj_rtlsdr);   % Fetch a frame having specified number of samples from the RTL device. 
                                            % These frames should be processed in order to detect the presence of a signal.
    end

    b=rtlsdr_data(:,3);
    a=abs(fft(b));


    if(max(a)>25)
        rtlsdr_datagod=vertcat(rtlsdr_data(:,1),rtlsdr_data(:,2),rtlsdr_data(:,3));
        break
    end
end

rtl_sdr_frame_accurate=rtlsdr_datagod(2001:end); 
% as it gets some time for the RTL device to receive samples with accurate values 
d=abs(fft(rtlsdr_datagod));
f=find(d==max(d));

% deciding the carrier frequency
if (1<f && f<rtlsdr_frmlen*nfrmhold/2) || (f<rtlsdr_frmlen*nfrmhold/2+3 && f>rtlsdr_frmlen*nfrmhold/2-3)
    cent_freq=round((rtlsdr_tunerfreq(c)+f/length(rtlsdr_datagod)*rtlsdr_fs)/1e6)
else if (rtlsdr_frmlen*nfrmhold/2-1<f && f<rtlsdr_frmlen*nfrmhold)
        cent_freq=round((rtlsdr_tunerfreq(c)+(f/length(rtlsdr_datagod)*rtlsdr_fs)-rtlsdr_fs)/1e6)
    else
        cent_freq=rtlsdr_tunerfreq(c)/1e6
    end
end

% figure
% plot(10*log10(d))

h=length(rtl_sdr_frame_accurate);
% deciding the hypothesis type of the input signal
g=signal_identifier_group_10(rtl_sdr_frame_accurate,rtlsdr_fs,h);

% sending the results to the server
  toc
  if (cent_freq<400 && cent_freq >200)
      data=[ 55010 7060 g cent_freq ];
      system(['client_write_code_for_demo "' num2str(data) '"'])
  end
