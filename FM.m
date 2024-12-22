%The frequency modulation (FM)waveform in time and frequency domain.
%fm=35HZ,fc=500HZ,Am=1V,Ac=1V,B=10
fs=10000;
Ac=1;
Am=1;
fm=35;
fc=500;
B=10;
t=(0:0.1*fs)/fs;
wc=2*pi*fc;
wm=2*pi*fm;
m_t=Am*cos(wm*t);% Message signal
subplot(5,1,1);
plot(t,m_t);
title('Modulating or Message signal(fm=35Hz)');
c_t=Ac*cos(wc*t);% Carrier signal
subplot(5,1,2);
plot(t,c_t);
title('Carrier signal(fm=500Hz)');
s_t=Ac*cos((wc*t)+B*sin(wm*t));% FM Modulated signal
subplot(5,1,3);
plot(t,s_t);
title('FM Modulated signal');
%DEMODULATION
d=demod(s_t,fc,fs,'fm');
subplot(5,1,4);
plot(t,d);
title('FM demodulated signal');
