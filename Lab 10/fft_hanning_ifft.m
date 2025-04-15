function [m_ctr,cm_ctr_win,yy] = fft_hanning_ifft(t,y,N,Mwin)
    % Calculate, display F(m).
    % NOTE: Matlab fft() returns N times spectrum so N is divided out
    %       Matlab ifft() used later will scale it back up by N
    m_ctr=-N/2:N/2-1;
    cm_ctr = fftshift(fft(y,N)/N);
    make_stem(m_ctr,abs(cm_ctr),'shifted spectrum','m(center)','abs(cm)');

    win=zeros(size(cm_ctr));
    win(find(m_ctr==-Mwin):find(m_ctr==Mwin))=hanning(2*Mwin+1);
    cm_ctr_win= cm_ctr.*win;

    % Reconstruct y (called yy) using inverse FFT (IFFT).
    % NOTE: Matlab fft() returns N times spectrum so N is was divided out
    %       Matlab ifft() now expects fft() scale up by N
    yy = real(ifft(N*fftshift(cm_ctr_win))); % scrub imaginary vestiges
    make_plot(t,yy,'Reconstructed Waveforms','seconds','reconstructed y');
end