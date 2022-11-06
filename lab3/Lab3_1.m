clear all; close all;
%imshow(obraz,[]) wtedy sam automatycznie dobierze skale szarosci

u = [1;2;3];

v = [4;5;6];

A = [1,2,3;
     4,5,6;
     7,8,9];

B = [1,2,1;
     3,1,4;
     7,8,9];

C = [1,2;
     3,4];

ZespA = [1,2,3 ; 1i,2i,3i ; 4,5,6];
ZespB = [3,2,1 ; 1i,2i,3i ; 6,5,4];


disp("1.Mnozenie wektorow (najpierw trzeba transponowac poprzez .') u*v = "), disp((u.') *v);
disp("2.Mnozenie macierzy transponowanej i sprzezonej ZespA z ZespB"), disp((ZespA')*ZespB)
disp("3.Dodawanie macierzy A + B = "), disp(A + B);
disp("4.Mnozenie macierzy A * B = "), disp(A * B);
disp("5.Mnozenie transponowanej u oraz A: "), disp((u.')*A);
disp("6.Mnozenie A*u = "), disp(A*u);
disp("7.Mnozenie stałej 10 * macierz A: "), disp(10*A);
disp("8.Sprawdzenie (A+B)u = Au + Bu"),
if (A+B)*u == A*u + B*u
    disp("tak")
else
    disp("nie")
end
disp("9.Obliczanie macierzy odwroconej od A (A^-1): "), disp(inv(A))
disp("10.Obliczanie wyznacznika macierzy: "), disp(det(C));
