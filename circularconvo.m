xn=input('Enter the first sequence x(n): ');
hn=input('Enter the second sequence h(n): ');
l1=length(xn);
l2=length(hn);
N=max(l1,l2);
% Perform convolution
y = cconv(xn, hn, N);
% Padding Zeros
xn=[xn, zeros(1, N-l1)];
hn=[hn, zeros(1, N-l2)];
% Displaying Output
disp('circular convolution of the given sequence is: ');
disp(y);
% Plotting the Input & Output
subplot(2,2,1);
stem(xn);
xlabel('n');
ylabel('x(n)');
title('plot of first seq x(n)')
subplot(2,2,2);
stem(hn);
xlabel('n');
ylabel('h(n)');
title('plot of second seq h(n)')
subplot(2,1,2);
stem(y);
xlabel('n');
ylabel('y(n)');
title('plot of circular convolution y(n)');