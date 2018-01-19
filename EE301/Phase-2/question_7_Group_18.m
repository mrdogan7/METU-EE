clear all
close all
clc
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