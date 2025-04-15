init(); N = 10000; %number of samples in time and freq domain
T = 0.5; % Signal period
Ts = T/N; %sample period
Fs = 1/Ts; %Sample rate
t=0:Ts:T-Ts; 
ind=0:(N-1);

% DTMF for '1'
f1 = 697;
f2 = 1209;
y1 = cos (2*pi*f1*t) + cos(2*pi*f2*t);
%make_plot(t(1:500),y1(1:500),'key = 1','t','amplitude')
% compute cm
cm_key1 = fft(y1)/N;
%make_plot(ind,abs(cm_key1),'Spectrum','index','magnitude')
f_hz = (ind)/N*Fs;  % x-axis
make_plot(f_hz,abs(cm_key1),'Spectrum','Hz','magnitude') 

% DTMF for '5'
f1 = 770;
f2 = 1336;
y5 = cos (2*pi*f1*t) + cos(2*pi*f2*t);
%make_plot(t(1:500),y5(1:500),'key = 5','t','amplitude')
% compute cm
cm_key5 = fft(y5)/N;
%make_plot(ind,abs(cm_key5),'Spectrum','index','magnitude')
f_hz = (ind)/N*Fs;  % x-axis
make_plot(f_hz,abs(cm_key5),'Spectrum','Hz','magnitude') 

% DTMF for '9'
f1 = 852;
f2 = 1477;
y9 = cos (2*pi*f1*t) + cos(2*pi*f2*t);
%make_plot(t(1:500),y9(1:500),'key = 9','t','amplitude')
% compute cm
cm_key9 = fft(y9)/N;
%make_plot(ind,abs(cm_key9),'Spectrum','index','magnitude')
f_hz = (ind)/N*Fs;  % x-axis
make_plot(f_hz,abs(cm_key9),'Spectrum','Hz','magnitude') 
