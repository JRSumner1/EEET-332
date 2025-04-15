function [mag_y, theta_y]=forced_resp_solver (num,den,mag_x,theta_x,sigma,omega)
    s=sigma+(1j*omega);
    x=mag_x*exp(1j*theta_x);
    Y=(polyval(num,s)./polyval(den,s)).*x;
    mag_y=abs(Y); theta_y=angle(Y);
    disp(['Output vector Y= ' num2str(mag_y) 'e^(' num2str(theta_y) 'j)']);
end