
x = linspace(-2 * pi, 0, 200);
y  = sin(x) .* exp(x);

plot(x,y,"r.");
xlabel("xx");
ylabel("yy");
xlim([-8, 0]);
ylim([-0.5, 0.8]);
title("y = sin(x)e^x");
grid