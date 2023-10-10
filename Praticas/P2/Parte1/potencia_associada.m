function p = potencia_associada(x, ts, T)
    % nº amostras
    N = T/ts; 

    % media da soma das potencias
    p = x(1:N)*x(1:N)'/N;   

end