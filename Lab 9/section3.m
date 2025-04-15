init();
N=8;
n=0:N-1;
Ts=10E-6;
t=n*Ts;
T=N*Ts;
y=zeros(size(t));
ind1=find(t<T/2);
y(ind1)=1;
make_plot(t,y,"Input Square Wave (N=8, Ts=10us)","seconds (n*Ts)","y");
ylim([-0.1,1.1]);
[cm,yy]=fft_ifft(t,n,y,N)
ylim([-0.1,1.1]);