function v = taylor(x, N)
%F1 Summary of this function goes here
%   Detailed explanation goes here

v = 0;

for n = 1:N
   
    v = v + (x.^n) .* sin(n .* pi / 2) ./ factorial(n);

end    

end

