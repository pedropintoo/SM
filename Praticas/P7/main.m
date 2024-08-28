close all;
%% 1.
% Carregar os dados do arquivo Guitar03.mat 
% x - amostras
% fa - frequencia de amostragem
load('Guitar03.mat');

Ta = 1 / fa;

figure;
Espetro(x,Ta);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

%soundsc(x,fa)

%% 2.
teta=2*pi*(5000/fa);
xr=x + 0.6*cos(teta*(0:length(x)-1)'+0.1*pi);

figure;
subplot(3,1,1);
Espetro(xr,Ta);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

%soundsc(xr,fa)

%% 3. a)

R=0.9;
teta=2*pi*(5000/fa);
num=[1 -2*cos(teta) 1];
den=[1 -2*R*cos(teta) R^2];

subplot(3,1,2);
[H, f] = respFreq(num,den,fa);
plot(f, H);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('|Resposta em Frequencia|')
grid on;

%soundsc(H,fa)

%% 3.b)

% Apply the filter to xr
[y] = filter(num, den, xr);
subplot(3,1,3);
Espetro(y,Ta);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

soundsc(y,fa);

%% 4. b)


[x,fa] = audioread('vozportugues.wav');

figure;

subplot(3,1,1);
Espetro(x,Ta);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

total_distance = 17*2;
velocity = 340;
t_total = 34/340;

a = 0.9;
D = t_total/Ta;

num=[1 zeros(1,D-1) a];
den=1;

% view
[H, f] = respFreq(num,den,fa);
subplot(3,1,2);
plot(f, H);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

% Apply the filter to x
[y] = filter(num, den, x);
subplot(3,1,3);
Espetro(y,Ta);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;


%soundsc(x,fa)
soundsc(y,fa);

%% 4. c) D = 9;

[x,fa] = audioread('vozportugues.wav');
Ta = 1/fa;

figure;
subplot(3,1,1);
Espetro(x,Ta);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

a = 0.9;
D = 9;

num=1;
den=[1 zeros(1,D-1) a];

subplot(3,1,2);
[H, f] = respFreq(num,den,fa);
plot(f, H);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

% b)

% Apply the filter to x
[y] = filter(num, den, x);
subplot(3,1,3);
Espetro(y,Ta);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

%soundsc(x,fa)
soundsc(y,fa);

%% 4. d) D = ...; corresponder a um atraso de 10ms

[x,fa] = audioread('vozportugues.wav');

figure;
subplot(3,1,1);
Espetro(x,Ta);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

Delay = 0.01; 
Gain = 0.9; % a

D = round(Delay/Ta); % atraso de Delay (ms)

num=1;
den=[1 zeros(1,D-1) Gain];

subplot(3,1,2);
[H, f] = respFreq(num,den,fa);
plot(f, H);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

% Apply the filter to x
y = Reverb(x,fa,Delay,Gain);
subplot(3,1,3);
Espetro(y,Ta);
xlim([-fa/2 fa/2])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

%soundsc(x,fa)
soundsc(y,fa);
