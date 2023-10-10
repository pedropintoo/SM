ts = 0.0001;
nf = 0.5;


% Para f(t)
f = 10;
A = 1;
fase = 70 .* pi ./ 180;

T = 1./f;
w = f.*2.*pi;

t = 0:ts:nf;
fx = A.*sin(w.*t + fase);

% Para g(t)
f = 10;
A = 1;
fase = 200 .* pi ./ 180;

T = 1./f;
w = f.*2.*pi;

t = 0:ts:nf;
gx = A.*sin(w.*t + fase);

% p(t) = f(t) + g(t)

px = fx + gx;

A0 = max(px)
f0 = gcd(3,4)

plot(t,fx,"r.")
hold on
plot(t,gx,"g.")
hold on
plot(t,px,"b.")
