ts = 0.0001;
nf = 0.5;

t = 0:ts:nf;

frequencias = [10, 20, 30];
f0 = gcd(gcd(10,20),30);
T0 = 1/f0;

colors = ["r.","g.","b."]

% 3 Testes
n_testes = 3;

for teste = 1:n_testes
    x = 0;
    for i = 1:3
        fase =  2*pi*rand() - pi;
        x = x + sin(2.*pi.*frequencias(i)*t + fase);
    end;
    
    plot(t,x,colors(teste));
    potencia_associada(x,ts,T0) % Como nao depende da fase e sempre igual
    hold on;
end;



