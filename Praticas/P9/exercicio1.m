freq = [14, 64, 5, 10, 7];
p = freq/100;
H = -sum(p.*log2(p));
