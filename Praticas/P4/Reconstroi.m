function [x, t] = Reconstroi(X, f)
    
    N = length(X);
    fa = max(f)*2;
    ta = 1/fa;

    % Calculando a Inverse Fast Fourier Transformer do sinal
    x = ifft(ifftshift(X))*N;
    t = (0:N-1)*ta; 
    

    plot(t,x);
    grid on;
end