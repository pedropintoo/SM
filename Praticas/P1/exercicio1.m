%% 1

Ta = 0.01;

%% 1.a)

t = (0:Ta:5);
x = 2 * sin(4*pi*t);

plot(t,x);
hold on

%% 1.b)

t = (0:Ta:5);
y = cos(10*pi*t);

plot(t,y);
hold on

%% 1.c)

z = x .* y;

plot(t,z);
hold on

%% 1.d)

t = (0:Ta:10);
w = 3*sin(pi*t) + 2*sin(6*pi*t);

plot(t,w);

%% 1.e)
figure;

% 3D
t1 = 0:Ta:5;
t2 = 0:Ta:5;
[xx, yy] = meshgrid(t1,t2);

q = 2*sin(2*pi*(2*xx+yy));

% vista 3d
surf(xx,yy,q) % ou mesh(xx,yy,q)
shading interp

% vista de cima
figure;
pcolor(xx,yy,q);
shading interp


