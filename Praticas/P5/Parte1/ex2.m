%% a) 

T_a = 0.2;
Np = 5;
T = 1;
N = round(Np*T/T_a);

t = (0:N-1)*T_a;
x = sin(2*pi*t);

[Y, t_rec] = ReconstroiSinal(x, T_a);

plot(t_rec, Y, t, x, "ro");
grid on;

%% b) 

T_a = 0.04;
Np = 5;
T = 1;
N = round(Np*T/T_a);

t = (0:N-1)*T_a;
x = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);

[Y, t_rec] = ReconstroiSinal(x, T_a);

plot(t_rec, Y, t, x, "ro");
grid on;