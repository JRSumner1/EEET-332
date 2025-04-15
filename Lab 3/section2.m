init();
disp('Section 1 Example 1');
sigma = 0; omega = 100;
mag_x= 4; theta_x= 30*(pi/180);
t=linspace(0,0.5,1000);
x_t=mag_x*cos(omega*t+theta_x);
make_plot(t,x_t,'Section 2 Input','t','x');
num=[1]; den=[2 2 1];
natural_resp_solver(den);
[mag_y, theta_y]=forced_resp_solver(num,den,mag_x,theta_x,sigma,omega)
y_t=mag_y*cos(omega*t+theta_y);
make_plot(t,y_t,'Section 2 Response','t','y');