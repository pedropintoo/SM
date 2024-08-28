ts = 0.001;
nf = 10;


% Para f(t)
f = 3;
A = 1;
fase = 0;

T = 1./f;
w = f.*2.*pi;

t = 0:ts:nf;
fx = A.*sin(w.*t + fase);

% Para g(t)
f = 7/2;
A = 1;
fase = 0;

T = 1./f;
w = f.*2.*pi;

t = 0:ts:nf;
gx = A.*sin(w.*t + fase);


% Para y(t)
f = 4;
A = 1;
fase = 0;

T = 1./f;
w = f.*2.*pi;

t = 0:ts:nf;
yx = A.*sin(w.*t + fase);


% p(t) = f(t) + g(t) + y(t)

px = fx + gx + yx;

A0 = max(px)
f0 = gcd(gcd(3,4)*2,7/2*2) / 2

%plot(t,fx,"r.")
hold on
%plot(t,gx,"g.")
hold on
plot(t,px,"b.")