function [ decision ] = signal_ident( image_sig, fs ,sample )

input_duration=sample/fs;
t=0:1/fs:input_duration-1/fs;
a=length(t);
n=0:a-1;


% defining reference signals
s1_b=(1+0.02.*(cos(2.*pi.*3000.*t)+cos(2.*pi.*6000.*t)+cos(2.*pi.*9000.*t)+cos(2.*pi.*12000.*t))).*exp(j.*2.*pi.*100000.*t);
s2_b=(1+0.2.*(cos(2.*pi.*3000.*t)+cos(2.*pi.*6000.*t)+cos(2.*pi.*9000.*t)+cos(2.*pi.*12000.*t))).*exp(j.*2.*pi.*100000.*t);
s4_b=exp(j.*(7.5.*sin(2.*pi.*3000.*t)+2.*pi.*100000.*t));

% defining ffts of input and reference signals.
z=abs(fft(image_sig));
z3=abs(fft(s4_b));
z1=abs(fft(s2_b));
z2=abs(fft(s1_b));
z4=length(z);


% figure
% plot(z)
% hold on
% plot(z)
% plot(z2)
% legend('z-Original Input Signal','z1-AM Template Signal','z3-FM Template Signals')
% xlabel('Frequency(Hz)')
% ylabel('Amplitude(dB)')
% title('FFT Plots of the Original and Template Signals')


F=zeros(1,a-1);
I=find(max(z)/2<z);
M=find(max(z3)/2<z3);
N=find(max(z1)/2<z1);
r=length(I);
r2=length(M);
r3=length(N);
BW=I(r)-I(1);
BW2=M(r2)-M(1);
BW3=N(r3)-N(1);


for a=1:r-1
        F(a)=I(a+1)-I(a);
end

if max(F)>z4/2
    BW=z4-max(F);
end

if abs(BW-BW3)<abs(BW-BW2)
    m=0;
else
    m=1;
end

if m==0
    N=find(max(z1)/9<z1);
    I=find(max(z)/9<z);
    M=find(max(z2)/9<z2);
    l=abs(length(N)-length(I));
    p=abs(length(M)-length(I));
    if l<p
        decision=2
    else
        decision=1
    end
end

if m==1
    I=find(max(z)/3<z);
    M=find(max(z3)/3<z3);
    r=length(I);
    r2=length(M);
    BW=I(r)-I(1);
    BW2=M(r2)-M(1);
    for a=1:r-1
        F(a)=I(a+1)-I(a);
    end
    if max(F)>z4/2
        BW=z4-max(F);
    end
    if (BW-BW2)<BW/11
        decision=4
    else
        decision=3
    end
end

end
