close all; clear all;

% użyje napisanej przeze mnie funkcji aproxymującej
% używającej metodę Czybyszewa:
% pierwszy argument to funkcja
% drugi argument to ilosc wielomianow (wiecej = dokladniej)

fun = @(x) 1./(1 + x.^2);

syms x;

f1 = @() Czybyszew(fun, 5);
timeit(f1)

figure;

aaa = pade(1./(1 + x.^2)),

%f2 = @() fplot(, [-1 1], 'k--'),;
%timeit(f2)
