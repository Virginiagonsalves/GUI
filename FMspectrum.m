%program of spectrum analyzer and analysis of Fm
close all
clear all
clc
Fs = 100; %sampling frq
t = [0:2*Fs+1]'/Fs;
Fc = 10; % Carrier frequency
x = sin(2*pi*2*t); % message signal
Ac=1;
% spectrum of fm
xfm=fmmod(x,Fc,Fs,10);
zfm = fft(xfm);
zfm = abs(zfm(1:length(zfm)/2+1));
frqfm = [0:length(zfm)-1]*Fs/length(zfm)/2;
figure;
plot(frqfm,zfm);
title('Spectrum of fm signal');
