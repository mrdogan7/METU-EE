%%
%%generating all the possible input signals.

fs=3600000;             %input (changeable)

input_duration=0.003;
t=0:1/fs:input_duration-1/fs;
a=length(t);

s1=(1+0.02.*(cos(2.*pi.*3000.*t)+cos(2.*pi.*6000.*t)+cos(2.*pi.*9000.*t)+cos(2.*pi.*12000.*t))).*exp(j.*2.*pi.*100000.*t);
s2=(1+0.2.*(cos(2.*pi.*3000.*t)+cos(2.*pi.*6000.*t)+cos(2.*pi.*9000.*t)+cos(2.*pi.*12000.*t))).*exp(j.*2.*pi.*100000.*t);
s3=exp(j.*(15.*sin(2.*pi.*3000.*t)+2.*pi.*100000.*t));
s4=exp(j.*(7.5.*sin(2.*pi.*3000.*t)+2.*pi.*100000.*t));

r1_0db=s1+sqrt(1/2*1.008).*randn(1,a)+j.*sqrt(1/2*1.008).*randn(1,a);
r2_0db=s2+sqrt(1/2*1.08).*randn(1,a)+j.*sqrt(1/2*1.08).*randn(1,a);
r3_0db=s3+sqrt(1/2*1).*randn(1,a)+j.*sqrt(1/2*1).*randn(1,a);
r4_0db=s4+sqrt(1/2*1).*randn(1,a)+j.*sqrt(1/2*1).*randn(1,a);
r1_10db=s1+sqrt(1/2*1.008/10).*randn(1,a)+j.*sqrt(1/2*1.008/10).*randn(1,a);
r2_10db=s2+sqrt(1/2*1.08/10).*randn(1,a)+j.*sqrt(1/2*1.08/10).*randn(1,a);
r3_10db=s3+sqrt(1/2*1/10).*randn(1,a)+j.*sqrt(1/2*1/10).*randn(1,a);
r4_10db=s4+sqrt(1/2*1/10).*randn(1,a)+j.*sqrt(1/2*1/10).*randn(1,a);
r1_20db=s1+sqrt(1/2*1.008/100).*randn(1,a)+j.*sqrt(1/2*1.008/100).*randn(1,a);
r2_20db=s2+sqrt(1/2*1.08/100).*randn(1,a)+j.*sqrt(1/2*1.08/100).*randn(1,a);
r3_20db=s3+sqrt(1/2*1/100).*randn(1,a)+j.*sqrt(1/2*1/100).*randn(1,a);
r4_20db=s4+sqrt(1/2*1/100).*randn(1,a)+j.*sqrt(1/2*1/100).*randn(1,a);

n=0:a-1;
z11=s1.*exp(-j.*pi/4.*n)+sqrt(1/2*1.008/1000).*randn(1,a)+j.*sqrt(1/2*1.008/1000).*randn(1,a);
z12=s1.*exp(-j.*pi/2.*n)+sqrt(1/2*1.008/1000).*randn(1,a)+j.*sqrt(1/2*1.008/1000).*randn(1,a);
z13=s1.*exp(j.*pi/4.*n)+sqrt(1/2*1.008).*randn(1,a)+j.*sqrt(1/2*1.008).*randn(1,a);
z14=s1.*exp(j.*pi/2.*n)+sqrt(1/2*1.008).*randn(1,a)+j.*sqrt(1/2*1.008).*randn(1,a);

z23=s2.*exp(j.*pi/4.*n)+sqrt(1/2*1.08).*randn(1,a)+j.*sqrt(1/2*1.08).*randn(1,a);
z21=s2.*exp(-j.*pi/4.*n)+sqrt(1/2*1.08/1000).*randn(1,a)+j.*sqrt(1/2*1.08/1000).*randn(1,a);
z24=s2.*exp(j.*pi/2.*n)+sqrt(1/2*1.08).*randn(1,a)+j.*sqrt(1/2*1.08).*randn(1,a);
z22=s2.*exp(-j.*pi/2.*n)+sqrt(1/2*1.08/1000).*randn(1,a)+j.*sqrt(1/2*1.08/1000).*randn(1,a);

z33=s3.*exp(j.*pi/4.*n)+sqrt(1/2*1).*randn(1,a)+j.*sqrt(1/2*1).*randn(1,a);
z34=s3.*exp(-j.*pi/4.*n)+sqrt(1/2*1/1000).*randn(1,a)+j.*sqrt(1/2*1/1000).*randn(1,a);
z31=s3.*exp(j.*pi/2.*n)+sqrt(1/2*1).*randn(1,a)+j.*sqrt(1/2*1.08).*randn(1,a);
z32=s3.*exp(-j.*pi/2.*n)+sqrt(1/2*1/1000).*randn(1,a)+j.*sqrt(1/2*1/1000).*randn(1,a);

z43=s4.*exp(j.*pi/4.*n)+sqrt(1/2*1).*randn(1,a)+j.*sqrt(1/2*1).*randn(1,a);
z44=s4.*exp(-j.*pi/4.*n)+sqrt(1/2*1/1000).*randn(1,a)+j.*sqrt(1/2*1/1000).*randn(1,a);
z41=s4.*exp(j.*pi/2.*n)+sqrt(1/2*1).*randn(1,a)+j.*sqrt(1/2*1.08).*randn(1,a);
z42=s4.*exp(-j.*pi/2.*n)+sqrt(1/2*1/1000).*randn(1,a)+j.*sqrt(1/2*1/1000).*randn(1,a);

%trial input
image_sig= z14; 

signal_identifier_group_10(image_sig,fs);
