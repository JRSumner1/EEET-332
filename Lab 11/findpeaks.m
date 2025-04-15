function [freqs] = findpeaks(y)
%
N = 10000; %number of samples in time and freq domain
T = 0.5; % Signal period
Ts = T/N; %sample period
Fs = 1/Ts; %Sample rate
t=0:Ts:T-Ts;

% % compute cm
cm= fft(y)/N;
% Find peaks
[a,indexes] =maxk(abs(cm),4); %detect the 4 largest spectral lines
%Convert indexes to Hz
freqs = (indexes-1)/N*Fs;
freqs=sort(freqs)  % sort the frequencies
max_freq_error = 3; % Maximum error due to the spectrum resolution

% Check if a '1' was received
if (abs(freqs(1)-697) < max_freq_error && abs(freqs(2)-1209)<max_freq_error)
    disp('key pressed:1')
end

% Check if a '5' was received
if (abs(freqs(1) - 770) < max_freq_error && abs(freqs(2) - 1336) < max_freq_error)
    disp('key pressed:5')
end

% Check if a '9' was received
if (abs(freqs(1) - 852) < max_freq_error && abs(freqs(2) - 1477) < max_freq_error)
    disp('key pressed:9')
end