f=5;
amp=19;
tint=[0:0.01:3];

g_t= amp*square(2*pi*f*tint);
figure(1);
plot(tint,g_t);
title('Square wave');
xlabel('t(s)');
ylabel('g(t)');

f_sample=100;
t_sample=1/f_sample;

%Fourier Transform
N=1000;
X=fft(g_t,N)*(2*t_sample/(3-0));
X1=fftshift(X);
%Frequency Scaling
F=(-N/2:N/2-1)*(f_sample/N);
figure(2);
plot(F,abs(X1));
title('FFT of Square wave');
xlabel('t(s)');


figure(3);
X2=ifft(X,N);
X2=X2(1:length(tint));
plot(tint,X2*3/(2*t_sample))
title('IFFT of Square wave');
xlabel('t(s)');
ylabel('g(t)');
