close all; clear all;

syms x;
hold on;

C5 = Czebyszew2(5),
C6 = Czebyszew2(6),
C7 = Czebyszew2(7),

for i=0:10
    func = Czebyszew2(i);
    fplot(func, [-1 1]);
end
