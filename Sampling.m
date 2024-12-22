m=1;
N=20;
n=0:m:N;
d=(n==0:m:N);
f=100;
fs=1000;
b=sin(2*pi*(f/fs)*n);
y=d.*b;
subplot(3,1,1)
plot(n,b);
title('original signal');
subplot(3,1,2)
stem(n,d);
title('impulse train');
subplot(3,1,3)
stem(n,y,'r');
title('sampled signal/discrete signal');
