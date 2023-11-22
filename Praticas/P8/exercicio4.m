%% 4.

clear;
load("Mensagem.mat");
NumBits = NumeroBitsCodigo2(Mensagem)

numero_medio = NumBits / length(Mensagem)

% O valor teorico minimo de entropia 1.49 bps
% sendo 1.49 < numero_medio < 1.49 + 1
