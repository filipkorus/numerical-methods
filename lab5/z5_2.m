% x(i) = ax0 +ax1*i^1 + ax2*i^2 + ... + axN*i^N
% y(i) = ay0 +ay1*i^1 + ay2*i^2 + ... + ayN*i^N
clear all; close all;

hold on;

for n=(4:6)
   %n = 10;                 % stopien wielomianow
   i = (0 : n)';           % zmienna "i" wielomianu w wezlach ("rzadka")
   xi = cos( 2*pi/n * i ); % wartosci funkcji x=kosinus w wezlach
   yi = sin( 2*pi/n * i ); % wartosci funkcji y=sinus w wezlach
   [ i, xi, yi ], %pause    % sprawdzenie wartosci
  
   X = vander(i), %pause    % wygenerowanie i pokazanie macierzy Vandermonde'a
  
   ax = inv(X) * xi;       % obliczenie wielu wsp. wielomianu dla zmiennej x
   ay = inv(X) * yi;       % obliczenie wielu wsp. wielomianu dla zmiennej y
   id = 0 : 0.01 : n;          % zmienna "i" dokladna
   xd = cos( 2*pi/n * id );    % dokladne wartosci x
   yd = sin( 2*pi/n * id );    % dokladne wartosci y
   plot(xi, yi, 'ko', xd, yd, 'r--', polyval(ax, id), polyval(ay, id), 'b.-');
end
xlabel('x'); ylabel('y'); title('y=f(x)'); axis square; grid; axis equal;

figure; plot( i,xi,'ko', id,xd,'r--', id, polyval(ax,id),'b.-');
xlabel('i'); ylabel('x'); title('x=f(i)'); grid; axis equal;
