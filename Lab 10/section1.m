init();
N=16;
n=0:N-1;
T=9;
Ts=T/N
ws = (2*pi)/Ts
t=0:Ts:T-Ts;

y=zeros(size(t));
t_between_1_and_2=find(t>=1&t<=2);
y(t_between_1_and_2)=-t(t_between_1_and_2);
t_greater_than_7=find(t>=7);
y(t_greater_than_7)=t(t_greater_than_7);

make_plot(t,y,'Input Function','n','y');
[m_ctr,cm_ctr,yy] = fft_ifft(t, n, y, N);
omega = m_ctr * 2 * pi / T;
make_stem(omega, abs(cm_ctr), 'Spectrum', 'Angular Frequency (rad/sec)', 'abs(cm)');