clear all
close all
clc
%% Intro


%% Instruction 1
% Instruction 1: Read the audio file using "audioread" command (read violin_A4.wav for violin, flute_A4.wav for flute and singer_A4.wav for voice signal) and store its outputs. 
% The audio signal should be stored in the vector with name "audio_signal" and the sampling rate in the variable "Fs")
[audio_signal_flute, Fs_flute] = audioread('flute_A4.wav');
[audio_signal_singer, Fs_singer] = audioread('singer_A4.wav');
[audio_signal_violin, Fs_violin] = audioread('violin_A4.wav');

[a b] = size(audio_signal_flute);
time_flute = a / Fs_flute;

[a b] = size(audio_signal_singer);
time_singer = a / Fs_singer;

[a b] = size(audio_signal_violin);
time_violin = a / Fs_violin;

%% Instruction 2
% Instruction 2: Find the index array corresponding to the time intervals between
% 1.8<t<1.84 seconds for violin
% 0.1<t<0.12 seconds for flute
% 0.17<t<0.21 seconds for singer
% Store the index array in an array called "time_index"
% Hint: There are Fs samples in 1 seconds.
time_index_violin = 1.8*Fs_violin : 1.84*Fs_violin;
time_index_flute = 0.1*Fs_flute : 0.12*Fs_flute;
time_index_singer = round(0.17*Fs_singer) : round(0.21*Fs_singer);

%% Instruction 3
% Instruction 3: Plot the time domain waveform for the time intervals
% specified for violin, flute and singer
figure
plot(1.8 : 1/Fs_violin : 1.84, audio_signal_violin(time_index_violin));
xlabel('Time (Seconds)');
ylabel('Amplitude');
title('Amplitude vs Time Graph of Violin');

figure
plot(0.1 : 1/Fs_flute : 0.12, audio_signal_flute(time_index_flute));
xlabel('Time (Seconds)');
ylabel('Amplitude');
title('Amplitude vs Time Graph of Flute');

figure
plot(0.17 : 1/Fs_singer : 0.21, audio_signal_singer(time_index_singer));
xlabel('Time (Seconds)');
ylabel('Amplitude');
title('Amplitude vs Time Graph of Singer');

% The samples of CTFT for -Fs/2<f<Fs/2 when Fs is larger than the audio
% signal bandwidth is found with the below code segment

%fft analysis for singer
N=2^12;
CTFT_sampled = fft(audio_signal_singer(time_index_singer),N)/N;        % This finds the samples of CTFT
CTFT_sampled_abs = abs(CTFT_sampled(2:N/2));             
freq = (1:N/2-1)*Fs_singer/N;                                   % observed frequency interval
CTFT_sampled_abs=CTFT_sampled_abs/max(CTFT_sampled_abs); % normalization of the spectrum with its maximum value.
figure;
semilogy(freq,CTFT_sampled_abs)                          % Plot the magnitude of the samples of CTFT of the audio signal
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Normalized Magnitude of the Audio Signals obtained from "The Singer"');

[c, d] = find(CTFT_sampled_abs == 1);
CTFT_sampled_abs(c);
dummy = freq(c);

if dummy < 500
    for i = 1 : 9
        f_singer(1, i) = freq(c * i);
        location_singer(1, i) = c * i;        
    end
    
elseif dummy > 500 && dummy < 1100
    for i = 1 : 9
        f_singer(1, i) = freq(c / 2 * i);
        location_singer(1, i) = c / 2 * i;        
    end
end

magnitude_singer_peak = CTFT_sampled_abs(location_singer(1, :));
phase_singer = phase(CTFT_sampled(2:N/2));
phase_singer_peak = phase_singer(location_singer(1, :));
freq_singer_peak = [freq(location_singer(1, :))]';

figure;
plot(freq,phase(CTFT_sampled(2:N/2)))                           % Plot the phase of the samples of CTFT of the audio signal
ylabel('Phase (radians)');
xlabel('Frequency (Hz)');
title('Phase of the Audio Signals obtained from "The Singer"');
% axis([0 4000 10^-4 1]) 

table_singer = table(freq_singer_peak, magnitude_singer_peak, phase_singer_peak);

%fft analysis for violin
N=2^12;
CTFT_sampled = fft(audio_signal_violin(time_index_violin),N)/N;        % This finds the samples of CTFT
CTFT_sampled_abs = abs(CTFT_sampled(2:N/2));             
freq = (1:N/2-1)*Fs_violin/N;                                   % observed frequency interval
CTFT_sampled_abs=CTFT_sampled_abs/max(CTFT_sampled_abs); % normalization of the spectrum with its maximum value.
figure;
semilogy(freq,CTFT_sampled_abs)                          % Plot the magnitude of the samples of CTFT of the audio signal
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Normalized Magnitude of the Audio Signals obtained from "The Violin"');

[c, d] = find(CTFT_sampled_abs == 1);
CTFT_sampled_abs(c);
dummy = freq(c);

if dummy < 500
    for i = 1 : 19
        f_violin(1, i) = freq(c * i);
        location_violin(1, i) = c * i;
    end
    
elseif dummy > 500 && dummy < 1100
    for i = 1 : 19
        f_violin(1, i) = freq(c / 2 * i);
        location_violin(1, i) = c / 2 * i;
    end
end

magnitude_violin_peak = CTFT_sampled_abs(location_violin(1, :));
phase_violin = phase(CTFT_sampled(2:N/2));
phase_violin_peak = phase_violin(location_violin(1, :));
freq_violin_peak = [freq(location_violin(1, :))]';

figure;
plot(freq,phase(CTFT_sampled(2:N/2)))                           % Plot the phase of the samples of CTFT of the audio signal
ylabel('Phase (radians)');
xlabel('Frequency (Hz)');
title('Phase of the Audio Signals obtained from "The Violin"');
% axis([0 4000 10^-4 1]) 

table_violin = table(freq_violin_peak, magnitude_violin_peak, phase_violin_peak);

%fft analysis for flute
N=2^12;
CTFT_sampled = fft(audio_signal_flute(time_index_flute),N)/N;        % This finds the samples of CTFT
CTFT_sampled_abs = abs(CTFT_sampled(2:N/2));             
freq = (1:N/2-1)*Fs_flute/N;                                   % observed frequency interval
CTFT_sampled_abs=CTFT_sampled_abs/max(CTFT_sampled_abs); % normalization of the spectrum with its maximum value.
figure;
semilogy(freq,CTFT_sampled_abs)                          % Plot the magnitude of the samples of CTFT of the audio signal
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Normalized Magnitude of the Audio Signals obtained from "The Flute"');

[c, d] = find(CTFT_sampled_abs == 1);
CTFT_sampled_abs(c);
dummy = freq(c);

if dummy < 500
    for i = 1 : 10
        f_flute(1, i) = freq(c * i);
    end
    
elseif dummy > 500 && dummy < 1100
    for i = 1 : 10
        f_flute(1, i) = freq(c / 2 * i);
        location_flute(1, i) = c / 2 * i;
    end
end

magnitude_flute_peak = CTFT_sampled_abs(location_flute(1, :));
phase_flute = phase(CTFT_sampled(2:N/2));
phase_flute_peak = phase_flute(location_flute(1, :));
freq_flute_peak = [freq(location_flute(1, :))]';


figure;
plot(freq,phase(CTFT_sampled(2:N/2)))                           % Plot the phase of the samples of CTFT of the audio signal
ylabel('Phase (radians)');
xlabel('Frequency (Hz)');
title('Phase of the Audio Signals obtained from "The Flute"');
% axis([0 4000 10^-4 1]) 

table_flute = table(freq_flute_peak, magnitude_flute_peak, phase_flute_peak);
