%% 𝑏𝑖𝑡 = 2, 3, 4 e 5 bits de quantização

T_a = 0.002;
Np = 5;
T = 1;
N = round(Np*T/T_a);

t = (0:N-1)*T_a;
x = sin(2*pi*t);


max_x = max(x);
min_x = abs(min(x));

Amp = max_x + min_x;

% Quantização com 2 bits
n_bits = [2, 3, 4, 5];
   
i = 1;
for n_bit = n_bits
    Npal = (2.^n_bit);
    delta = Amp / Npal;
    
    % Particoes
    partion = -min_x+delta:delta:max_x-delta; % len Npal - 1;
    % Entre as particoes
    codebook = -min_x+delta/2:delta:max_x-delta/2; % len Npal;
    
    [index,quants] = quantiz(x, partion, codebook);
    
    subplot(3,4,i);
    plot(0:length(quants)-1, quants, "r"),title("n_b="+n_bit);
    
    subplot(3,4,4+i);
    [Y, t_new] = ReconstroiSinal(quants, T_a);
    plot(t,x,"b",t_new,Y, "r");

    subplot(3,4,8+i);
    Espetro(quants, T_a);
    
    i = i + 1;
end




