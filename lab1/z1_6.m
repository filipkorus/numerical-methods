% zadanie 1.6 (*)
clear all; close all; % zerowanie pamieci, usuwanie rysunkow
echo on % wyswietlanie linii programu na ekranie

% Definiowanie wektorow i macierzy
N = 256;
h = sin(2*pi/128*(0:N-1)); % wektor poziomy h
v = sin(4*pi/64*(0:N-1)).'; % wektor pionowy v
% plot(h);

A = v*h;
mesh(A);
