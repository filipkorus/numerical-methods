close all; clear all;

% y = 2x + 4 
x1 = 1; y1 = 6;
x2 = 2; y2 = 8;
x3 = 3; y3 = 10;
x4 = 4; y4 = 12;

% macierz A zawiera x(n) i jedynki w drugiej kolumnie
A = [x1,1;
     x2,1;
     x3,1;
     x4,1];

% macierz b to macierz y-grekow czyli rozwiazan:
b = [y1;
     y2;
     y3;
     y4];

% wyliczenie macierzy a (wektora wspolczynnikow a i b) , ze wzoru 6.1
wspolczynniki = inv(A.' * A) * A.' * b;

display("wspolczynnik a = " + wspolczynniki(1));
display("wspolczynnik b = " + wspolczynniki(2));
display("otrzymany wzór funkcji to: y = " + wspolczynniki(1) + "x" + " + " + wspolczynniki(2));
