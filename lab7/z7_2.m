close all; clear all;

%% funkcja sinusoidalna
x0=0;
x1=pi/2;
x2=pi/4;

syms x;
y=sin(x);

y0=sin(x0),
y1=sin(x1),
y2=sin(x2),

pochodna=cos(x);

%dokladne wartosci pochodnych z sinx
p0=cos(x0);
p1=cos(x1);
p2=cos(x2);

h=pi/4;
px0=(1/(2*h))*(-3*y0+4*y1-y2);
px1=(1/(2*h))*(y2-y0);
px2=(1/(2*h))*(y0-4*y1+3*y2);

err0=abs(px0-p0),
err1=abs(px1-p1),
err2=abs(px2-p2), % otrzymane blezy sa duże

%% funkcja wielomianowa y = 0.5+x +2x^2
xx0=1;
xx1=2;
xx2=3;

yy=0.5+x+2*(x^2);
yy0=0.5+xx0+2*(xx0^2);
yy1=0.5+xx1+2*(xx1^2);
yy2=0.5+xx2+2*(xx2^2);

pochodnayy=4*x+1; % pochodna z funkcji wielomianowej
pp0=4*xx0+1,
pp1=4*xx1+1,
pp2=4*xx2+1,% oblcizone wartosci z pochodnej funkcji

% obliczenie pochodnej na podstawie 3 wzorow
h1=1;
ppx0=(1/(2*h1))*(-3*yy0+4*yy1-yy2);
ppx1=(1/(2*h1))*(yy2-yy0);
ppx2=(1/(2*h1))*(yy0-4*yy1+3*yy2);

%obliczenie wartosci błędów
erx0=abs(ppx0-pp0);
erx1=abs(ppx1-pp1);
erx2=abs(ppx2-pp2); % błędy wynoszą 0 - o wiele lepsze skalowanie w przypadku wielomianu drugiego stopnia niz funkcji sinusoidalnej

%% wielomian  y = 0.5+x +2x^2+3x^3
wielomian=0.5+x+2*(x^2)+3*(x^3); %skorzystamy z wczesniejszego xx0,xx1,xx2
wartoscwielomianu0=0.5+xx0+2*(xx0^2)+3*(xx0^3);
wartoscwielomianu1=0.5+xx1+2*(xx1^2)+3*(xx1^3);
wartoscwielomianu2=0.5+xx2+2*(xx2^2)+3*(xx2^3);

pochodnawielomianu=9*(x^2)+4*x+1;

wartosczpochodnej0=9*(xx0^2)+4*xx0+1,
wartosczpochodnej1=9*(xx1^2)+4*xx1+1,
wartosczpochodnej2=9*(xx2^2)+4*xx2+1,

%obliczenie pochodnej na podstawie 3 wzorow
pw0=(1/(2*h1))*(-3*wartoscwielomianu0+4*wartoscwielomianu1-wartoscwielomianu2),
pw1=(1/(2*h1))*(wartoscwielomianu2-wartoscwielomianu0),
pw2=(1/(2*h1))*(wartoscwielomianu0-4*wartoscwielomianu1+3*wartoscwielomianu2),

ex0=abs(pw0-wartosczpochodnej0),
ex1=abs(pw1-wartosczpochodnej1),
ex2=abs(pw2-wartosczpochodnej2), %bledy mniejsze niz 10, duze


