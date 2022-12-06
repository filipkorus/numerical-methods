% diff_image.m Popraw skutecznonosc wizualizacji krawedzi/tekstur
% poprzez nieliniowe skalowanie wartosci pikseli

%%% im wieksza macierz tym dokladniejsze rozniczkowanie obrazu,
%%% z wyjatkiem laplasjanu z gaussa - mniejsza macierz daje lepsze efekty

clear all; close all;
[im1,map] = imread('lena512.bmp'); % wczytaj obraz

figure; imshow(im1,map); title('Wejsciowy obraz');

w = [ 0,  1, 0;
      1, -4, 1;
      0,  1, 0];

%% rozniczkowanie krawedzie pionowe - slaba jakosc obrazu, nawet po probie wyskalowania
sr1=[1,2,1;
     0,0,0;
     -1,-2,-1];

sr2=[1,0,-1;
    2,0,-2;
    1,0,-1];

prewitt1=[1,1,1;
          0,0,0;
         -1,-1,-1];
prewitt2=[1,0,-1;
          1,0,-1;
          1,0,-1];

imsr=conv2(im1,sr1);
figure; imshow(20*imsr,map); title('Sobel rozniczka');

imprewitt=conv2(im1,prewitt2);
figure; imshow(15*imprewitt,map); title('Prewitt rozniczka');

%% rozniczkowanie

r1=[1,0; % obraz prawie caly czarny, nic nie widac
    0,-1];
r2=[0,1;
    -1,0];
r3=[1,1,1;
    1,-2,-1;
    1,-1,-1];
r4=[1,1,1;
    -1,-2,1;
    -1,-1,1];
imr=conv2(im1,r4);
figure; imshow(10*imr,map); title('rozniczkowanie');

%% podwojne rozniczkowanie
pr1=[0,-1,0; % ciemny obraz krawedzie biale
    -1,4,-1;
    0,-1,0];
pr2=[1,(-2),1; % ledwo cokolwiek widac, pojedyncze kropki
    (-2),4,(-2);
   1,(-2),1 ];
pr3=[(-1),(-1),(-1); % obraz widoczny, jak w negatywie, biale krawedzie
    (-1),8,(-1);
    (-1),(-1),(-1)];
pr4=[(-1),(-1),(-1),(-1),(-1); % ziarniscie
    (-1),(-1),(-1),(-1),(-1);
    (-1),(-1),24,(-1),(-1);
    (-1),(-1),(-1),(-1),(-1);
    (-1),(-1),(-1),(-1),(-1)];

impr=conv2(im1,pr3);
figure; imshow(10*impr,map); title('podwojne rozniczkowanie');

impr1=conv2(im1,pr4);
figure; imshow(10*impr1,map); title('2 podwojne rozniczkowanie');

%% filtry laplasjany z gaussa

kd=[0,0,1,0,0; % biale krawedzie, nacisk na wypełnienie
    0,1,2,1,0;
    1,2,-16,2,1;
    0,1,2,1,0;
    0,0,1,0,0];

kd2=[0,1,1,2,2,2,1,1,0; % bardzo uwydatnione krawędzie
    1,2,4,5,5,5,4,2,1;
    1,4,5,3,0,3,5,4,1;
    2,5,3,(-12),(-24),(-12),3,5,2;
    2,5,0,(-24),(-40),(-24),0,5,2;
    2,5,3,(-12),(-24),(-12),3,5,2;
    1,4,5,3,0,3,5,4,1;
    1,2,4,5,5,5,4,2,1;
    0,1,1,2,2,2,1,1,0];

imkd=conv2(im1,kd);
figure; imshow(10*imkd,map); title('laplasjan z gaussa');

imkd2=conv2(im1,kd2);
figure; imshow(4*imkd2,map); title('laplasjan z gaussa 2');

%im2 = conv2( im1, w); % conv splot wektorwo im2 i w
im2=conv2(im1,prewitt2);
figure; imshow(4*im2,map); title('Przetworzony obraz'); % 5,10->jasniejszy obraz
