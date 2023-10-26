% Carregar os dados do arquivo Guitar03.mat 
% x - amostras
% fa - frequencia de amostragem
load('Guitar03.mat')
%sound(x,fa)

Ta = 1 / fa;
subplot(2,3,[1,2,3]);
[X, f] = Espetro(x,Ta);
xlim([-2000 2000])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on;

%% f < 100 || f > 400
% Consideramos tabem as freq negativas! abs(f(i))

x1_filtrada = zeros(length(f),1);
f1_filtrada = zeros(length(f),1);

for i=1:length(f)
    if abs(f(i)) > 400 || abs(f(i)) < 100
        f1_filtrad  a(i,1) = f(i);
        x1_filtrada(i,1) = X(i,1);
    end
end

%[Y, t] 
subplot(2,3,4);
[x1_fil, t1] = Reconstroi(x1_filtrada, f1_filtrada);

sound(real(x1_fil),fa)

%% f > 400 && f < 600

x2_filtrada = zeros(length(f),1);
f2_filtrada = zeros(length(f),1);

% Consideramos tabem as freq negativas! abs(f(i))
for i=1:length(f)
    if abs(f(i)) > 400 && abs(f(i)) < 600
        f2_filtrada(i,1) = f(i);
        x2_filtrada(i,1) = X(i,1);
    end
end

%[Y, t] 
subplot(2,3,5);
[x2_fil, t2] = Reconstroi(x2_filtrada, f2_filtrada);

sound(real(x2_fil),fa)

%% f > 600 && f < 1200

x3_filtrada = zeros(length(f),1);
f3_filtrada = zeros(length(f),1);

% Consideramos tabem as freq negativas! abs(f(i))
for i=1:length(f)
    if abs(f(i)) > 600 && abs(f(i)) < 1200
        f3_filtrada(i,1) = f(i);
        x3_filtrada(i,1) = X(i,1);
    end
end

%[Y, t] 
subplot(2,3,6);
[x3_fil, t2] = Reconstroi(x3_filtrada, f3_filtrada);

sound(real(x3_fil),fa)

