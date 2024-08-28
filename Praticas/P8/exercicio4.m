%% 4.

clear;
load("Mensagem.mat");
NumBits = NumeroBitsCodigo2(Mensagem)

numero_medio = NumBits / length(Mensagem) % 1.7000

% O valor teorico minimo de entropia 1.49 bps
