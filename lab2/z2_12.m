clear all; close all;
format long e;

for p=0:14
    f1 = @(x) sqrt(x) * (sqrt(x+1) - sqrt(x));
    f2 = @(x) sqrt(x) / (sqrt(x+1) + sqrt(x));

    x = 10^p;

    fprintf("At x =\t%16d,\tf1(x)=%20.18f,\tf2(x)=%20.18f\n", x, f1(x), f2(x));

    if p == 10
        a1 = sqrt(x+1);
        a2 = sqrt(x);
    end;
end;

fprintf("\tsqrt(x+1)= %22.13f\n" + ...
    "\tsqrt(x)= %24.13f\n" + ...
    "\tdiff= %37.23f\n" + ...
    "\tsum= %38.23f\n", a1, a2, a1-a2, a1+a2);
