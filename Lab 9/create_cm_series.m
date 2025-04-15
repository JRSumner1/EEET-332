function [m,cm]=create_cm_series(M,T)
    m=-M:M;
    A=10;
    cm=1j*A./(2*pi*m);
    zero_ind=find(m==0);
    cm(zero_ind)=0;
end