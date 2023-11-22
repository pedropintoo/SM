function [X, f] = Espetro(x, Ta)
    
    N = length(x);
    fa = 1/Ta;

    % Calculando a Fast Fourier Transformer do sinal
    X = fftshift(fft(x)) .* (1/N);  % o fft(x) faz sem a divisao por N !
    f = (0:N-1)*fa/N - fa/2; % [-fa/2, fa/2] com N amostras
    

    stem(f,abs(X)), axis([-20,20 0,0.7]);
    grid on;
end