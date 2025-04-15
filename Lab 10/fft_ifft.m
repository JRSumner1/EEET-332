function [m_ctr,cm_ctr,yy] = fft_ifft(t, n, y, N)
    % Calculate, display F(m).
    % NOTE: Matlab fft() returns N times spectrum so N is divided out
    %       Matlab ifft() used later will scale it back up by N
    m_ctr=-N/2:N/2-1;
    cm_ctr = fftshift(fft(y,N)/N);
    make_stem(m_ctr,abs(cm_ctr),'Shifted Spectrum','m(center)','abs(cm)');
 
    % Reconstruct y (called yy) using inverse FFT (IFFT).
    % NOTE: Matlab fft() returns N times spectrum so N is was divided out
    %       Matlab ifft() now expects fft() scale up by N
    yy = real(ifft(N*fftshift(cm_ctr))); % scrub imaginary vestiges
    make_plot(t,yy,'Reconstructed Waveforms','seconds','reconstructed y');
end