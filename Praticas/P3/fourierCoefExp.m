function ck = fourierCoefExp(Ta, T0, x, K)
    ak = zeros(1, K);
    bk = zeros(1, K);
    N = T0 / Ta;
    f = 1 / T0;

    for i = 1:N
        ak(1) = ak(1) + (2/N) * x(i); % a_0
    end

    for k = 2:K
        for n = 1:N
            ak(k) = ak(k) + 2/N*x(n) * cos(2*pi*(k-1)*f*n*Ta);
            bk(k) = bk(k) + 2/N*x(n) * sin(2*pi*(k-1)*f*n*Ta);
        end
    end
    
    % ck coef
    Kc = 2*K + 1;
    ck = zeros(1,Kc); % !!!
    
    % k_idx = neg
    for k = 1:floor(Kc/2)
        ck(k) = ( ak(k) + j*bk(k) ) ./ 2; 
    end
    
    % k_idx = 0
    ck(ceil(Kc/2)) = ak(1)/2;
    
    % k_idx = pos
    idx = 1;
    for k = ceil(Kc/2)+1:Kc
       ck(k) = (ak(idx) - j.*bk(idx)) ./ 2;
       idx = idx + 1;
    end


end