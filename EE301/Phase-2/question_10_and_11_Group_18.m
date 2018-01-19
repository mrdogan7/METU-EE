% to  listen sounds clearly use breakpoints.
% %Question 10: 
% % 
[audio_signal, Fs] = audioread('singer_A4.wav');
audio_signal_downsampled= audio_signal(1:10:end); % Take 1 of every 10 samples
sound(audio_signal_downsampled,Fs/10);

[audio_signal, Fs] = audioread('violin_A4.wav');
audio_signal_downsampled= audio_signal(1:10:end); % Take 1 of every 10 samples
sound(audio_signal_downsampled,Fs/10);

[audio_signal, Fs] = audioread('flute_A4.wav');
audio_signal_downsampled= audio_signal(1:10:end); % Take 1 of every 10 samples
sound(audio_signal_downsampled,Fs/10);

%Question 11:

[audio_signal, Fs] = audioread('singer_A4.wav');
audio_signal_downsampled= audio_signal(1:2:end); % Take 1 of every 10 samples
sound(audio_signal_downsampled,Fs/2);

%%Comment of Question 10 and 11
%In question 10, as we decreased the sampling frequency(Fs),Our frequency
%will leave the right interval and will be in an desired position. But in
%question 11, we are still in the right frequency interval so there is not
%such a breakdown in the singer signal. 
