clc;
clear all;
close all;
f = input('Enter frequency: ');
fs = input('Sampling Frequency: ');
N = input('Order of filter: ');
wc = 2*pi*(f/fs);
h= fir1(N-1, wc/pi, hamming (N));
disp('hamming window coefficients: ');
disp(hamming(N));
disp('impulse response of the FIR filter: ');
disp(h);
figure(1);
freqz(h);
figure(2);
n = 0:1:N-1;
stem(n,h);
xlabel('n');
ylabel('h(n');
title('impulse response of the FIR filter');


h=fir1(33, 150/(1000/2),hamming(34));

%generate simulated input of 50, 300 & 200 Hz, each of 30 points
n=1:30;
f1=50;f2=300;f3=200;fs=1000;
x=[];
x1=sin(2*pi*n*f1/fs);
x2=sin(2*pi*n*f2/fs);
x3=sin(2*pi*n*f3/fs);
x=[x1 x2 x3];
subplot(2,1,1);
stem(x);
title('input');
%generate o/p
%y=conv(h,x);
y=filter(h,1,x);
subplot(2,1,2);
stem(y);
title('output');

