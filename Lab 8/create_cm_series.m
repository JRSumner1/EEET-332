function [m,cm]=create_cm_series(M,T)
    m=-M:M;
    wo=2*pi/T;
    tp=0.1E-3;
    cm=((sin((m*pi)/2))./(m*pi)).*(exp(-1j*m*wo*tp));
    cm(m == 0)=0.5;
end