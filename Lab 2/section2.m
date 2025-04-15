init();
x=linspace(0,10,1751)
num=[1 0 -16];
ynum=polyval(num,x)
den=[1 -4]
yden=polyval(den,x)
y=ynum./yden
k=find(isnan(y))
x(k)
y(k)=8
make_plot(x,y,"Section 2: (x^2-16)/(x-4)","x","y")