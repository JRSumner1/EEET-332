init();
N=1024; %number of samples in time and freq domain
n=0:N-1; %index for freq domain
T= 3; %signal period
Ts=T/N; %sample period
t=0:Ts:T-Ts; 
y=zeros(size(t));

w1 = 8*2*pi;
w2 = 15*2*pi;

y = 10 + 5*sin(w1*t) + 16*sin(w2*t);

make_plot(t,y,'Input function','t','y');
Mwin=128;
[m_ctr,cm_ctr,yy] = fft_hanning_ifft(t,y,N,Mwin); %Shifted spectrum
omega = m_ctr *2 * pi/T;
make_stem(omega,cm_ctr,'spectrum','ang freq (rad/s)','abs(cm)'); 