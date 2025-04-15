init();
N=1024;
T=9;
Ts=T/N;
t=0:Ts:T-Ts;

y = zeros(size(t));

Tp = 1;  % Period of sine pulse

indices = (t >= 1 & t <= 2) | (t >= 7 & t <= 8);
y(indices) = sin(2 * pi * t(indices) / Tp);

make_plot(t, y, 'Input Function', 't', 'y');
fft_ifft(t,y,N);