
Ta = 0.001;
Np = 6;
T = 1;
N = round(Np*T/Ta);

subplot(2,1,1);
[x, t] = GeraSinal(N, Ta);
plot(t,x);

subplot(2,1,2);
[X, f] = Espetro(x,Ta);
xlim([-20 20]);

sound(x,1/Ta)


%% f < 2 || f > 40
% Consideramos tabem as freq negativas! abs(f(i))

x1_filtrada = zeros(length(f),1);
f1_filtrada = zeros(length(f),1);

for i=1:length(f)
    if abs(f(i)) < 2 || abs(f(i)) > 40
        f1_filtrada(i,1) = f(i);
        x1_filtrada(i,1) = X(i,1);
    end
end

%[Y, t] 
subplot(2,1,1);
hold on
[x1_fil, t1] = ReconstroiFreq(x1_filtrada, f1_filtrada);

sound(real(x1_fil),1/Ta)

