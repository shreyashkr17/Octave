rp = input('Enter passband ripple value: ');
rs = input('Enter stopband ripple value: ');
fp = input('Enter passband freq value: ');
fs = input('Enter stopband freq value: ');
fsp = input('Enter sampling freq value: ');

w1 = 2 * fp / fsp;
w2 = 2 * fs / fsp;

[n, wn] = buttord(w1, w2, rp, rs);
[b, a] = butter(n, wn, 'low');
[h, w] = freqz(b, a, 512, fsp);
mag = 20 * log10(abs(h));
subplot(4, 1, 1);
plot(w, mag);
title('Gain vs Frequency of Low-pass Filter');

% High pass
[b, a] = butter(n, wn, 'high');
[h, w] = freqz(b, a, 512, fsp);
mag = 20 * log10(abs(h));
subplot(4, 1, 2);
plot(w, mag);
title('Gain vs Frequency of High-pass Filter');

% Band pass
[n, wn] = buttord(w1, w2, rp, rs);
[b, a] = butter(n, wn, 'band');
[h, w] = freqz(b, a, 512, fsp);
mag = 20 * log10(abs(h));
subplot(4, 1, 3);
plot(w, mag);
title('Gain vs Frequency of Band-pass Filter');

% Band stop
[n, wn] = buttord(w1, w2, rp, rs);
[b, a] = butter(n, wn, 'stop');
[h, w] = freqz(b, a, 512, fsp);
mag = 20 * log10(abs(h));
subplot(4, 1, 4);
plot(w, mag);
title('Gain vs Frequency of Band-stop Filter');

