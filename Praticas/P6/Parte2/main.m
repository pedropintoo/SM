
Ta = 0.001;
Np = 6;
T = 1;
N = round(Np*T/Ta);

subplot(2,2,[1,2]);
[x, t] = GeraSinal(N, Ta);
plot(t,x);

subplot(2,2,3);
[X, f] = Espetro(x,Ta);
xlim([-20 20]);


%% f > 5 %% f < 15
% Consideramos tabem as freq negativas! abs(f(i))

x1_filtrada = zeros(length(f),1);
f1_filtrada = zeros(length(f),1);

for i=1:length(f)
    if abs(f(i)) > 5 && abs(f(i)) < 15
        f1_filtrada(i,1) = f(i);
        x1_filtrada(i,1) = X(i,1);
    end
end

%[Y, t] 
subplot(2,2,4);
[x1_fil, t1] = Reconstroi(x1_filtrada, f1_filtrada);
