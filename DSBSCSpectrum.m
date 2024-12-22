Fs = 100;              % Sampling frequency
t = (0:2*Fs)/Fs;       % Time vector
Fc = 10;               % Carrier frequency
x = sin(2*pi*2*t);     % Message signal
Ac = 1;                % Carrier amplitude

% Modulate the message signal to generate DSB-SC signal
ydouble = Ac * x .* cos(2*pi*Fc*t + pi);

% Compute and plot the spectrum of DSB-SC signal
zdouble = fft(ydouble);
zdouble = abs(zdouble(1:length(zdouble)/2+1));
frqdouble = linspace(0, Fs/2, length(zdouble));

% Plot spectrum of DSB-SC signal
figure;
plot(frqdouble, zdouble);
title('Spectrum of double-sideband signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

