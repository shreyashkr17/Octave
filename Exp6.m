pkg load signal

% Define a wave signal
t = 0:0.001:1; % Time vector
f = 5; % Frequency (corrected '=' to 'f')
x = sin(2*pi*f*t); % Wave signal

% Plot the original wave
subplot(3,1,1);
plot(t, x);
title('Original wave');
xlabel('Time (s)');
ylabel('Amplitude');

% Decimate the wave by a factor of 10
d = 10; % Decimation factor
y = decimate(x, d); % Decimated wave
td = linspace(t(1), t(end), length(y)); % Decimated time vector (corrected '=' to 'td')

% Plot the decimated wave
subplot(3,1,2);
plot(td, y);
title('Decimated wave');
xlabel('Time (s)');
ylabel('Amplitude');

% Interpolate the decimated wave by the same factor of 10
z = interp(y, d); % Interpolated wave
ti = linspace(t(1), t(end), length(z)); % Interpolated time vector (corrected '=' to 'ti')

% Plot the interpolated wave
subplot(3,1,3);
plot(ti, z);
title('Interpolated wave');
xlabel('Time (s)');
ylabel('Amplitude');

