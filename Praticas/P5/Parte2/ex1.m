%% a) 𝑛𝑏𝑖𝑡 = 2, 3 e 4 bits de quantização

T_a = 0.002;
Np = 5;
T = 1;
N = round(Np*T/T_a);

t = (0:N-1)*T_a;
x = sin(2*pi*t);


%% 2 bits)
max_x = max(x);
min_x = abs(min(x));

Amp = max_x + min_x;

% Quantização com 2 bits
n_bits = [2, 3, 4];
   
i = 1;
for n_bit = n_bits
    Npal = (Amp.^n_bit);
    delta = Amp / Npal;
    
    partion = -min_x+delta:delta:max_x-delta; % len Npal - 1;
    codebook = delta/2-min_x:delta:max_x-delta/2; % len Npal;
    
    [index,quants] = quantiz(x, partion, codebook);
    
    subplot(2,3,i);
    plot(t,x,t, quants, "r"),title("n_b="+n_bit);
    
    subplot(2,3,3+i);
    Espetro(quants, T_a);

    i = i + 1;
end




