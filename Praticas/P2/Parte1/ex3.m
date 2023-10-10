%Exemplo para alinea a)

ts = 0.001;
nf = 2;

f = 2;
A = 2;
fase = 0;

T = 1./f;
w = f.*2.*pi;

t = 0:ts:nf;
x = A.*sin(w.*t + fase);


p = potencia_associada(x, ts, T)