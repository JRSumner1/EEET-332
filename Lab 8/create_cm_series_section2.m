function [m,cm]=create_cm_series_section2(M,T)
    m=-M:M;
    cm = sin((m*pi)/2)./(m*pi);
    cm(m == 0)=0.5;
end