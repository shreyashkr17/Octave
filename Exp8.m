fp = input('Enter the passing freq: ');
fstop = input('Enter the stopping freq: ');
fsp = input('Enter the sampling freq value: ');
n = input('Enter the order of the filter: ');

w1 = 2 * fp / fsp;
w2 = 2 * fstop / fsp;

% Low pass filter
A = fir1(n, w1, 'low');
[h, w] = freqz(A, 1, 512, fsp);
mag = 20 * log10(abs(h));
subplot(4, 1, 1);
plot(w, mag);
title('Gain vs Frequency of Low-pass Filter');

% High pass filter
A = fir1(n, w2, 'high');
[h, w] = freqz(A, 1, 512, fsp);
mag = 20 * log10(abs(h));
subplot(4, 1, 2);
plot(w, mag);
title('Gain vs Frequency of High-pass Filter');

% Band pass filter
wn = [w1, w2];
A = fir1(n, wn, 'bandpass');
[h, w] = freqz(A, 1, 512, fsp);
mag = 20 * log10(abs(h));
subplot(4, 1, 3);
plot(w, mag);
title('Gain vs Frequency of Band-pass Filter');

% Band stop filter
A = fir1(n, wn, 'stop');
[h, w] = freqz(A, 1, 512, fsp);
mag = 20 * log10(abs(h));
subplot(4, 1, 4);
plot(w, mag);
title('Gain vs Frequency of Band-stop Filter');

