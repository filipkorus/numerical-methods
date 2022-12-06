close all; clear all;

syms x;
y = @(x) x^2;

h = pi/8;
x0 = pi/3;

xs = [x0-h, x0, x0+h],
ys = [y(x0-h), y(x0), y(x0+h)],

a=1/3; b=4/3; c=1/3;
A = h*(a*ys(1) + b*ys(2) + c*ys(3)),


