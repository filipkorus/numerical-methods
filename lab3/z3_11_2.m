clear all; close all;
P=readmatrix('babia_gora.dat');

% transforming the data into carthesian etc
geoidHeight = egm96geoid(mean(P(:,1)), mean(P(:,2)));
[x,y,z] = geodetic2enu(P(:,1), P(:,2), P(:,3)+geoidHeight, min(P(:,1)), min(P(:,2)), geoidHeight, wgs84Ellipsoid); % lat, lon, hgt -> x, y, z
P=[x, y, z];
P(:,4) = ones; % add row of 1s

% setting the transformation values
scale=[1,1,2];
xrotate=deg2rad(180);
yrotate=deg2rad(0);
zrotate=deg2rad(0);
r=makehgtform('scale',scale, 'xrotate',xrotate, 'yrotate',yrotate, 'zrotate',zrotate);
P=r*P';

[X,Y] = meshgrid(min(P(1,:)):200:max(P(1,:)), min(P(2,:)):200:max(P(2,:)));
Z = griddata(P(1,:), P(2,:), P(3,:), X, Y);

surf(X,Y,Z);
axis equal;
colormap default
