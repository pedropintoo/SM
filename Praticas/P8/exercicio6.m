%% 4.

clear;
load("Mensagem.mat");
H = Entropia(Mensagem);

fprintf("Entropia: %d\n",H); % H ~= 1.49
