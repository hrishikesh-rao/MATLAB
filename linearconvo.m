% Input the sequences
x1n = input('Enter the first sequence: ');
x2n = input('Enter the second sequence: ');
% Perform convolution
yn = conv(x1n, x2n);
% Display the sequences and the convolution result
disp('Convoluted output is: ');
disp(yn);
% Plot the sequences and the convolution result
subplot(2,2,1);
stem(x1n);
xlabel('n');
ylabel('x1(n)');
title('First Sequence');
subplot(2,2,2);
stem(x2n);
xlabel('n');
ylabel('x2(n)');
title('Second Sequence');
subplot(2,1,2);
stem(yn);
xlabel('n');
ylabel('yn(n)');
title('Convoluted Sequence');