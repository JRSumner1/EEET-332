init();
t=linspace(0, 4*pi, 201)
w=0.5
phase=-pi/3
theta=w*t+phase;
y=(exp(1j*theta)+exp(-1j*theta))/2;
make_plot(t,y,"Section 1: Cosine Wave with 60 degree shift","Time (t)","Amplitude (y)")