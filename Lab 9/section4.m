init();
N = 64; % DFT, data point count (make EVEN, best power of 2)
n = 0:N-1; % index
nc = -N/2:N/2-1; % centered index
T = 5; % waveform period
Ts = T/N; % sampling period, sample freq = 1/Ts
t = n*Ts % time of each sample

% Problem 17a: split cosine lobe
y = zeros(size(t));
wsig = 2*pi/4; %w of signal = 2pi/Tsig
ind1=find(t<1);
ind2=find(t>3);
y(ind1) = 2*cos(wsig*t(ind1)); %notice the use of logical arrays
y(ind2) = -2*sin(wsig*t(ind2));
make_plot(t,y,'Input split cosine lobe (Problem 17a)','seconds (n*Ts)','y');
m=n;
[cm,yy] = fft_ifft(t,n,y,N);