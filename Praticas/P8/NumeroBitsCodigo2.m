function NumBits = NumeroBitsCodigo2(Texto)
    [Simbolos,Frequencias] = Alfabeto2(Texto);   
    Ocurrencias = sort(Frequencias * length(Texto),'descend');
    
    array = 1:length(Simbolos);

    NumBits = sum(array .* Ocurrencias);
end