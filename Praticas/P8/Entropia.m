function H = Entropia(Texto)

    [~, Frequencias] = Alfabeto2(Texto);

    H = -sum(Frequencias .* log2(Frequencias));
end