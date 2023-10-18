Ta = 0.01;      % Periodo de amostragem, em segundos
f0 = 1;         % Frequencia do sinal composto, em Hz
Np = 6;         % Numero de periodos a considerar para o sinal resultante
k = 100;      


for k_val=1:k
    % Exemplo da pergunta 1
    %
    ak = zeros(1,k_val);    % ak da serie
    bk = zeros(1,k_val);    % bk da serie
    
    impares = (1:2:k_val);
    bk(impares+1) = 4 ./ (impares .* pi);
    %
    
    [x,t] = fourierFunc(Ta,f0,Np,ak,bk);
    plot(t,x),xlabel("t"),ylabel("x"),title("k="+k_val);
    
    % Show the animation
    drawnow;
    if k_val ~= k
        pause(0.1);
        clf;
    end
end