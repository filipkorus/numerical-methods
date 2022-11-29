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

f2 = @() fplot(pade(1./(1 + x.^2)), [-1 1], 'k--');
timeit(f2)
