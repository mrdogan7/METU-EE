function out=recognize_sound_Group_18a(audio_signal_file_name)

close all
clc
% to  listen sounds clearly use breakpoints.
%% Question 7
% For flute, the magnitude and the phase of the FS coefficients are
flute_mag=[0.7795 1.0000 0.5534 0.1867 0.0780 0.0273 0.0492 0.0262 0.0378 0.0223]; % for k=1,..,10. 
flute_phase=[1.2746 5.8427 0.7077 4.3386 4.9902 1.9148 0.2783 3.6495 1.0951 5.7888]; % in radians for k=1,..,10. 

violin_mag=[1 0 0.2098 0.1225 0.1745 0.03614 0.08944 0.1911 0.08307 0.2004 0.04268 0.08082 0.115 0.1097 0.0233 0.02627 0.0205 0.0101 0.006174]; % for k=1,..,19. 
violin_phase=[0.4319 0 4.1878 3.4878 1.5787 4.5619 1.2929 5.1425 4.4743 0.6902 5.1557 0.0548 2.4212 3.0708 2.8690 1.8168 1.9318 2.9805 3.3459]; % in radians for k=1,..,19. 

singer_mag=[0.4579 1 0.4448 0.05475 0 0 0.2663 0.1466 0]; % for k=1,..,9. 
singer_phase=[3.6159 5.8819 5.9292 2.0619 0 0 5.3230 4.5716 0]; % in radians % for k=1,..,9.

Fs=44100; %sampling rate given
freq=440; %Hz for note "A" given
time= linspace(1/Fs, 5 , 5*Fs);
flute_row=zeros(1,5*Fs);
for n=1:length(flute_mag);
    flute_row=flute_row+real(flute_mag(n)*cos(880*pi*n*time));
end
flute_row=.5*flute_row/max(flute_row);
sound(flute_row,Fs);


time_plot=1/36:1/Fs:1.415;
time_plot_m=1.36*Fs : 1.415*Fs; %modified time_plot vector

figure
plot(1.36 : 1/Fs : 1.415, flute_row((1.36*Fs) : (1.415*Fs)));
xlabel('Time (Seconds)');
ylabel('Amplitude');
title('Amplitude vs Time Graph of Flute');


violin_row=zeros(1,5*Fs);
for n=1:length(violin_mag);
    violin_row=violin_row+real(violin_mag(n)*cos(880*pi*n*time));
end
violin_row=.5*violin_row/max(violin_row);
sound(violin_row,Fs);


%time_plot=1/36:1/Fs:1.415;%%%
%time_plot_m=1.36*Fs : 1.415*Fs; %modified time_plot vector

figure
plot(1.36 : 1/Fs : 1.415, violin_row((1.36*Fs) : (1.415*Fs)));
xlabel('Time (Seconds)');
ylabel('Amplitude');
title('Amplitude vs Time Graph of Violin');




singer_row=zeros(1,5*Fs);
for n=1:length(singer_mag);
    singer_row=singer_row+real(singer_mag(n)*cos(880*pi*n*time));
end
singer_row=.5*singer_row/max(singer_row);
sound(singer_row,Fs);


time_plot=1/36:1/Fs:1.415;
time_plot_m=1.36*Fs : 1.415*Fs; %modified time_plot vector

figure
plot(1.36 : 1/Fs : 1.415, singer_row((1.36*Fs) : (1.415*Fs)));
xlabel('Time (Seconds)');
ylabel('Amplitude');
title('Amplitude vs Time Graph of Flute');

%The audios are similar and playing the same notes with the first audios.
%But in this part, the audios are sharper and more like mechanical sounds.
%These signals are clipped and one other difference is this. In the
%previous part, the pulses are much higher than the ones in this part.
%% Question-8
flute_mag=[0.7795 1.0000 0.5534 0.1867 0.0780 0.0273 0.0492 0.0262 0.0378 0.0223]'; % for k=1,..,10. 
% flute_phase=[1.2746 5.8427 0.7077 4.3386 4.9902 1.9148 0.2783 3.6495 1.0951 5.7888]; % in radians for k=1,..,10. 

violin_mag=[1 0 0.2098 0.1225 0.1745 0.03614 0.08944 0.1911 0.08307 0.2004 0.04268 0.08082 0.115 0.1097 0.0233 0.02627 0.0205 0.0101 0.006174]'; % for k=1,..,19. 
% violin_phase=[0.4319 0 4.1878 3.4878 1.5787 4.5619 1.2929 5.1425 4.4743 0.6902 5.1557 0.0548 2.4212 3.0708 2.8690 1.8168 1.9318 2.9805 3.3459]; % in radians for k=1,..,19. 

singer_mag=[0.4579 1 0.4448 0.05475 0 0 0.2663 0.1466 0]'; % for k=1,..,9. 
% singer_phase=[3.6159 5.8819 5.9292 2.0619 0 0 5.3230 4.5716 0]; % in radians % for k=1,..,9.

% Instruction 1: Find the index array corresponding to the time interval
% between 1 and 1.2 seconds. 
[audio_signal, Fs] = audioread(audio_signal_file_name);
% Store the index array in an array called "time_index"
time_index = 1.0*Fs : 1.2*Fs;
% Hint: There are Fs samples in 1 seconds.

N=2^12;
CTFT_sampled = fft(audio_signal(time_index),N)/N;
CTFT_sampled_abs = abs(CTFT_sampled(2:N/2));             % phase information is not important for speech signals, thus taking the absolute value will suffice.
freq = (1:N/2-1)*Fs/N;                                   % observed frequency interval
CTFT_sampled_abs=CTFT_sampled_abs/max(CTFT_sampled_abs); % normalization of the spectrum with its maximum value.

ind_440=ceil(N/Fs*440);         % The time index corresponding to 440 Hz
error_interval=ceil(N/Fs*40);   % Number of samples in the error interval of 40 Hz (for possible tuning errors in the instruments)

[c, d] = find(CTFT_sampled_abs == 1);
CTFT_sampled_abs(c);
dummy = freq(c);

if dummy < 500
    for i = 1 : 19
        f(1, i) = freq(c * i);
        location(1, i) = c * i;        
    end
    
elseif dummy > 500 && dummy < 1100
    for i = 1 : 19
        f(1, i) = freq(c / 2 * i);
        location(1, i) = c / 2 * i;        
    end
end

magnitude_peak = CTFT_sampled_abs(location(1, :));
mag_11 = magnitude_peak(1:10);
mag_22 = magnitude_peak(1:9);
mag_33 = magnitude_peak(1:19);
mag_1(:, 1) = mag_11; %f
mag_2(:, 1) = mag_22; %s
mag_3(:, 1) = mag_33; %v

phase_sound = phase(CTFT_sampled(2:N/2));
% phase_peak = phase_sound(location(1, :));
% freq_peak = [freq(location(1, :))]';
error_1 = (1/10)*sum((abs(mag_1 - flute_mag)).^2);

error_2 = (1/9)*sum((abs(mag_2 - singer_mag)).^2);

error_3 = (1/19)*sum((abs(mag_3 - violin_mag)).^2);

errors = [error_1 error_2 error_3];
min_error = min(errors);

if min_error == error_1
    display('The sound signal is a flute signal');
    out = 2;
elseif min_error == error_2
    display('The sound signal is a singer signal');
    out = 3;
elseif min_error == error_3
    display('The sound signal is a violin signal');
    out = 1;
end
total_error = [0.0377 0.0171 0.0801 % f-s s-s v-s
    0.0147 0.0505 0.0539 %f-f s-f v-f
    0.1878 0.1589 0.0604]; %f-v s-v v-v


%% Commment:
%As it can be seen from the total_error matrix that total_error(1,2),
%total_error(2,1), total_error(3,3). These results were expected by us.
%Because these results are the error values of three signals with respect
%to theirselves. For example in the first row, all errors are calculated
%with respect to the singer signal. It is observed that the error of a
%singer signal with respect to another singer signal is minimum, as
%expected.
%