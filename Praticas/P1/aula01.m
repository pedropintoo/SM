% x = linspace(0, 2*pi, 100);
% fx = sin(x);
% plot(x, fx);
% xlabel("xx");
% ylabel("yy");
% legend("sin");
% title("funçao seno");
% grid;


x = linspace(-2 * pi, 2 * pi, 100);
fx = taylor(x, 100); %fx = sin(x);

fsin = sin(x);

plot(x,fx,"-b", x, fsin, "r.");