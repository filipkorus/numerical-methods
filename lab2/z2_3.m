clear all; close all;

a=fi( 11.25,0,8,4), a.bin,
b=fi( 4.75,0,8,4), b.bin,
c=fi( 4.75,1,8,4), c.bin,
d=fi(-4.75,1,8,4), d.bin,

myPI=fi(pi, 0, 8, 6), myPI.bin,
myPI=fi(pi, 1, 8, 6), myPI.bin,
error = abs((double(myPI)-pi))/pi*100,
myPI=fi(pi, 0, 16, 12), myPI.bin,
myPI=fi(pi, 1, 16, 12), myPI.bin,