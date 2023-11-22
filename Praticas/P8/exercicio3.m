%% 3.

clear;
load("Mensagem.mat");
[Simbolos,Frequencias] = Alfabeto2(Mensagem);

% n_bits = ceil(log2(length(Simbolos)));
A = "00";
B = "01";
C = "10";

n_total_bits = length(Mensagem) * 2 % 40 bits

% + bits do que o necessario!
numero_medio = n_total_bits / length(Mensagem)
% O valor teorico minimo de entropia 1.49 bps
% sendo 1.49 < numero_medio < 1.49 + 1
