function[y]=cm2yt(t,T,m,cm,M)
    wo=2*pi/T;
    y=zeros(size(t));
    num_harmonics=M;
    for i = -num_harmonics:num_harmonics
        ind=find(m==i);
        y=y+cm(ind)*exp(1j*i*wo*t);
    end
end