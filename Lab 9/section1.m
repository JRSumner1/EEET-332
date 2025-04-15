init();
T=6;
t=0:T/100:T;
y=zeros(size(t));
ind1=find(t<2&t>0);
y(ind1)=-t(ind1).^5;
ind2=find(t<6&t>4.5);
y(ind2)=3*t(ind2);
make_plot(t,y,"logical arrays","t","y");
