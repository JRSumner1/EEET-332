init();
t=linspace(0,20,201);
ey=exp(-0.2.*t)
y=ey.*cos(t)
make_plot(t,y,"Section 3: Damping Equation","x","y")