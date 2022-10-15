clear all; close all;

a=fi( 1.625,0,8,7), a.bin,
b=fi( 0.375,0,8,7), b.bin,
c=fi( 0.375,1,8,7), c.bin,
d=fi(-0.375,1,8,7), d.bin,

myPI=fi(pi, 0, 8, 6), myPI.bin,
myPI=fi(pi, 1, 8, 5), myPI.bin,
error = abs((double(myPI)-pi))/pi*100,
myPI=fi(pi, 0, 16, 14), myPI.bin,
myPI=fi(pi, 1, 16, 13), myPI.bin,
