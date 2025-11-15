clc;
clear all;
close all;
num=input('enter numerator coefficients');
den=input('enter the denominator  coefficients');
[h,am]=freqz(num,den);
disp(h)

subplot(2,1,1);
plot(am/pi,20*log10(abs(h)));
disp(abs(h));
xlabel('norm frequency');
ylabel('gain in db');
title('magnitude response');

subplot(2,1,2);
plot(am/pi,angle(h));
disp(angle(h));
xlabel('norm frequency');
ylabel('angle of h');
title('phase response');

