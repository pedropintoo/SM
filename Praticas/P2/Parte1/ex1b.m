ts = 0.001;
nf = 1;

f = 5;
A = 1;
fase = pi ./ 2;

T = 1./f;
w = f.*2.*pi;

t = 0:ts:nf;
x = A.*sin(w.*t + fase);

plot(t,x,"r.")
xlabel("t");
ylabel("x");
grid