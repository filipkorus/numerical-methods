close all; clear all;

syms x;
fun = @(x) sin(x);

field_corr = integral(fun, -pi/2, pi/2),

% 2-punktowa
nodes = [-1/sqrt(3), 1/sqrt(3)];
wages = [1, 1];

% 3-punktowa (dokladniejsza)
%nodes = [-sqrt(3/5), 0, sqrt(3/5)];
%wages = [5/9, 8/9, 5/9];

a = -pi/2;
b = pi/2;

N = length(nodes);
field = 0;

for k=1:N
   field = field + wages(k)*fun((a+b)/2 + ((b-a)/2)*nodes(k));
end

field = field * (b-a)/2,
err = abs(field - field_corr),

