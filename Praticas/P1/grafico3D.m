x = linspace(-3, 3, 51);
y = linspace(-3, 3, 51);
[xx, yy] = meshgrid(x,y);

expo1 = -((xx+1).^2 + (yy+1).^2);
expo2 = -5*((xx-1).^2 + (yy-1).^2);
f = 2*exp(expo1) + exp(expo2);

%surf(xx,yy,f); % ou mesh(xx,yy,f)
%shading interp
pcolor(xx,yy,f);
