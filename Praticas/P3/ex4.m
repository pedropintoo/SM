Ta = 0.001;
Np = 4;
K = 100;
T = 1;
f = 1/T;

N = round(Np*T/Ta);

t = (0:N-1)*Ta;

%%x = square(2*pi*f*t);
x = sawtooth(2*pi*f*t + pi/2, 1/2);

[ak, bk] = fourierCoef(Ta, T, x, K);
[x, t] = fourierFunc(Ta, f, Np, ak, bk);

plot(t, x), grid on;
