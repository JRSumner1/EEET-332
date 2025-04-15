init();
x=[-15 -13 -11 -5 -2 -1 0 1 3 4]
p=[1 15 0 -9]
y=polyval(p,x)
r=roots(p)
make_plot(x,y,"Section 2b vector with Roots", "x", "y", r,[0 0 0], "*");
