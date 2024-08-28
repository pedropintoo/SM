%% a) com 2 periodos
Ta = 0.001;
Np = 2;
T = 1;
N = round(Np*T/Ta);

t = (0:N-1)*Ta;
x = sin(2*pi*t);

Espetro(x, Ta);

%% a) com 2 periodos
Ta = 0.25;
Np = 1;
T = 1;
N = round(Np*T/Ta)*10;

t = (0:N-1)*Ta;
x = sin(2*pi*t) + 4*cos(2*pi*(4+0)*t);

Espetro(x, Ta);

%% a) com 100 periodos

Ta = 0.001;
Np = 100;
T = 1;
N = round(Np*T/Ta);

t = (0:N-1)*Ta;
x = sin(2*pi*t);

Espetro(x, Ta);

%% b) registado durante 50 seg.

Ta = 0.001;
Np = 1;
T = 50;
N = round(Np*T/Ta);

t = (0:N-1)*Ta;
x = sin(5*2*pi*t) + cos(6*2*pi*t) + cos(7*2*pi*t - pi/4);

Espetro(x, Ta);

%% c) registado durante 100 periodos

Ta = 0.001;
Np = 100;
T = 50;
N = round(Np*T/Ta);

t = (0:N-1)*Ta;
x = 10 + 14*cos(2*10*pi*t - pi/3) + 8*cos (20*2*pi*t + pi/2);

Espetro(x, Ta);

%% 𝑧(𝑡) – onda quadrada entre 0 e 1, de frequência 1 Hz, registada durante 5 seg.

Ta = 0.001;
Np = 1;
T = 5;
N = round(Np*T/Ta)

t = (0:N-1)*Ta;
f = 1;
x = (square(2*pi*f*t) + 1)/2;
plot(t,x), axis([0,5 -0.5,1.5]);
figure;
Espetro(x, Ta);

%% 𝑧(𝑡) – onda quadrada entre 0 e 1, de frequência 1 Hz, registada durante 5 seg.

Ta = 0.001;
Np = 1;
T = 5;
N = round(Np*T/Ta)

t = (0:N-1)*Ta;
f = 1;
x = sawtooth(2*pi*f*t + pi/2, 1/2);
plot(t,x), axis([0,5 -1.5,1.5]);
figure;
Espetro(x, Ta);


