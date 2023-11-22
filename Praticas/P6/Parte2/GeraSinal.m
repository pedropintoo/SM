function [x, t] = GeraSinal(N, Ta)
    t = (0:(N-1))'*Ta;
    
    phi1 = randn(N,1)*pi;
    phi_i1 = zeros(N,1);
    
    for n=2:N
        phi_i1(n) = phi_i1(n-1) + (phi1(n)+phi1(n-1))*Ta/2; 
    end

    phi2 = random('normal', 0, pi, N, 1);
    phi_i2 = zeros(N,1);
    
    for n=2:N
        phi_i2(n) = phi_i2(n-1) + (phi2(n)+phi2(n-1))*Ta/2; 
    end
    
    % ruido
    r = 0.5 * sin(2*10*pi*t + 10*phi_i1) + 0.5 * sin(2*12*pi*t + 10*phi2);
    
    % sinosoide
    s = sin(2*pi*t);

    x = s + r;
end