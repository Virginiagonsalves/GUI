%program of spectrum analyzer and analysis of AM
Fs = 100;               % Sampling frequency
t = (0:2*Fs)/Fs;        % Time vector
Fc = 10;                % Carrier frequency
x = sin(2*pi*2*t);      % Message signal
Ac = 1;                 % Carrier amplitude

% Modulate the message signal using AM
xam = x .* (Ac * cos(2*pi*Fc*t));

% Compute and plot the spectrum of AM
zam = fft(xam);
zam = abs(zam(1:length(zam)/2+1));
frqam = linspace(0, Fs/2, length(zam));

% Plot spectrum of AM
figure;
plot(frqam, zam);
title('Spectrum of AM signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

