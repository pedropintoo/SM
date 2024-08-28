%% 2.

freq = [14, 64, 5, 10, 7];
p = freq/100;
H = -sum(p.*log2(p)); % Teorica: 1.626

CompMesg = 10000; % quanto maior o valor tende!
nBits = [2,1,4,3,4]; % Feito no papel com Codigo de Huffman

[NumBits,NumBPS] = GeraMensagem(freq,CompMesg,nBits)

