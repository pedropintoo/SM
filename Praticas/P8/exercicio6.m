%% 4.

clear;
load("Mensagem.mat");
H = Entropia(Mensagem);

fprintf("Entropia: %d\n",H);

% O valor teorico minimo e 1.49 bps
