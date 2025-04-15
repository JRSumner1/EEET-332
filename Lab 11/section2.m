init();
N = 10000; % Number of samples in time and frequency domain
T = 0.5;   % Signal period
Ts = T/N;  % Sample period
Fs = 1/Ts; % Sample rate
t = 0:Ts:T-Ts;

% DTMF for '1'
f1 = 697;    % Low frequency
f2 = 1209;   % High frequency
y1 = cos(2*pi*f1*t) + cos(2*pi*f2*t);

% DTMF for '2'
f1 = 697;    % Low frequency
f2 = 1336;   % High frequency
y2 = cos(2*pi*f1*t) + cos(2*pi*f2*t);

% DTMF for '3'
f1 = 697;    % Low frequency
f2 = 1477;   % High frequency
y3 = cos(2*pi*f1*t) + cos(2*pi*f2*t);

% DTMF for '4'
f1 = 770;    % Low frequency
f2 = 1209;   % High frequency
y4 = cos(2*pi*f1*t) + cos(2*pi*f2*t);

% Play the DTMF tones
sound(y1, Fs);
pause(0.6);
sound(y2, Fs);
pause(0.6);
sound(y3, Fs);
pause(0.6);
sound(y4, Fs);