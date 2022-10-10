% zadanie 1.2 (**)
clear all; close all;

a = 9; b = 0; c = 4; % input values
fprintf('%dx^2 + %dx + %d = 0\n\n', a, b, c);

delta = b^2 - 4*a*c;

x1 = (-b + sqrt(delta)) / (2 * a);
x2 = (-b - sqrt(delta)) / (2 * a);
fprintf('x1 = %f%+fj\nx2 = %f%+fj\n\n', real(x1), imag(x1), real(x2), imag(x2));
