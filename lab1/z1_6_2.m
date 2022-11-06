% zadanie 1.6 (*)
clear all; close all; % zerowanie pamieci, usuwanie rysunkow
echo on % wyswietlanie linii programu na ekranie

[A] = imread('agh.jpg');
imshow(255-A); % reverse colors
