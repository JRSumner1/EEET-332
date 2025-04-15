init();
disp('Section 4 Example 1');
sigma = 0; omega = 3;
mag_x= 6; theta_x= 30*(pi/180);
t=linspace(0,0.5,1000);
x_t = 2;
x_t=mag_x*cos(omega*t+theta_x);
make_plot(t,x_t,'Section 4 Input','t','x');
num=[1 -2 1]; den=[1 2 16 18 2];
natural_resp_solver(den);
[mag_y, theta_y]=forced_resp_solver(num,den,mag_x,theta_x,sigma,omega);
y_t=mag_y*cos(omega*t+theta_y);
make_plot(t,y_t,'Section 4 Response','t','y');