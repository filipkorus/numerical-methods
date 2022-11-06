clear all; close all;

A = load('babia_gora.dat');
draw(A, 'x', 0, 'Original data');

% ----------------------------------------------

axis = 'x';
angle = 180;

rotatedA = A * rotateMatrix(axis, angle);
draw(rotatedA, axis, angle, join(['Rotated around',convertCharsToStrings(axis),'axis by',int2str(angle),'deg']));
