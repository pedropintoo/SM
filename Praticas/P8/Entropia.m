function H = Entropia(Texto)

[Simbolos, Frequencias] = Alfabeto2(Texto);

H = -sum(Frequencias .* log2(Frequencias));
end