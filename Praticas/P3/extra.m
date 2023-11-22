figure;
Ta = 0.001;
Np = 1;
K = 5;
T = 1;
f = 1/T;

N = round(Np*T/Ta);

t = (0:N-1)*Ta;

%%x = square(2*pi*f*t);
x = sawtooth(2*pi*f*t + pi/2, 1/2);

ck = fourierCoefExp(Ta, T, x, K);

[x, t] = fourierFuncExp(Ta, f, Np, ck);

plot(t, x), grid on;