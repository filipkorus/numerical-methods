% zadanie 1.2 (**)
clear all; close all;

a = 1; b = 10; c = 1; % input values
fprintf('%dx^2 + %dx + %d = 0\n\n', a, b, c);

delta = b^2 - 4*a*c;

if delta < 0
    disp('This quadratic equation has no solutions!');
elseif delta == 0
    x1 = -b / (2 * a);
    fprintf('x1 = %f', x1);
else
    x1 = (-b + sqrt(delta)) / (2 * a);
    x2 = (-b - sqrt(delta)) / (2 * a);
    fprintf('x1 = %f\nx2 = %f\n\n', x1, x2);
end;
