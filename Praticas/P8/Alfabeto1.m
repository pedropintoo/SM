function Simbolos = Alfabeto1(Texto)
    n = 1;
    Simbolos(1) = Texto(1);
    for k=2:length(Texto)
        if (sum(Simbolos == Texto(k)) == 0)
            n = n + 1;
            Simbolos(n) = Texto(k);
        end
    end
    
end
