clear all; close all;

x = 10^(-50);
y = 10^200;
z = 10^300;

res = (x*y)/z, % tak
res = x*(y/z), % tak
res = (x/z)*y, % nie

realmin('double'),
