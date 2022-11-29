clear all; close all;

load("babia_gora.dat");

x = babia_gora(:,1);
y = babia_gora(:,2);
z = babia_gora(:,3); 

%obcinamy jeden rząd
%x = [x(1:55);x(67:121)];
%y = [y(1:55);y(67:121)];
%z = [z(1:55);z(67:121)];

%lub co drugą wartość
tx = []; ty = []; tz = [];
for i=1:length(x)
    if mod(i,2) == 1
        tx = [tx; x(i)];
        ty = [ty; y(i)];
        tz = [tz; z(i)];
    end
end

x = tx; y = ty; z = tz;

% dane zinterpolowane
xInt = (min(x) : (max(x)-min(x))/10 : max(x));
yInt = (min(y) : (max(y)-min(y))/10 : max(y));

[Xi,Yi] = meshgrid(xInt, yInt); % siatka interpolacji xi, yi

outn = griddata( x, y, z, Xi,Yi, "nearest" );
outl = griddata( x, y, z, Xi,Yi, "linear" );
outc = griddata( x, y, z, Xi,Yi, "cubic" );
outv = griddata( x, y, z, Xi,Yi, "v4" );
outa = griddata( x, y, z, Xi,Yi, "natural" );

%rysunek dla naszych zinterpolowanych wyników, dla różnych metod
figure; surf( outn ); title("nearest");
figure; surf( outl ); title("linear");
figure; surf( outc ); title("cubic");
figure; surf( outv ); title("v4");
figure; surf( outa ); title("natural");

% zmieniamy macierze wartości z rozmiaru 11x11 
% na wektory 121x1 do porównania z oryginalnymi wartościami
outn = reshape(outn,[121,1]);
outl = reshape(outl,[121,1]);
outc = reshape(outc,[121,1]);
outv = reshape(outv,[121,1]);
outa = reshape(outa,[121,1]);
comp = babia_gora(:,3);

nearest_err = 0; linear_err = 0; cubic_err = 0;
v4_err = 0; natural_err = 0;

for i=1:length(comp)
    nearest_err = nearest_err + abs(comp(i)-outn(i));
    linear_err = linear_err + abs(comp(i)-outl(i));
    cubic_err = cubic_err + abs(comp(i)-outc(i));
    v4_err = v4_err + abs(comp(i)-outv(i));
    natural_err = natural_err + (abs(comp(i)-outa(i)));
end

nearest_err, linear_err, cubic_err, v4_err, natural_err,
