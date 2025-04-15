function [cm,yy]=fft_ifft(t,n,y,N)
    cm=fft(y,N)/N;
    make_stem(n,abs(cm),"Spectrum Amplitude","n","ab s(cm)");
    yy=real(ifft(N*cm));
    make_plot(t,yy,"Reconstructed Waveform","seconds","reconstructed Y");
end