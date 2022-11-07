close all;

hold off
babiaGora = load('babia_gora.dat');
myPlot(babiaGora * rotationMatrixDeg(90, 180, 90));

function myPlot(P)
   plot3(P(:, 1), P(:, 2), P(:, 3), '.');
end

function [A] = rotationMatrix(yaw, pitch, roll)
   % (yaw, pitch, roll) are rotations about: (z, y, x)
   A = [
       [cos(yaw)*cos(pitch)    cos(yaw)*sin(pitch)*sin(roll)-sin(yaw)*cos(roll)    cos(yaw)*sin(pitch)*cos(roll)+sin(yaw)*sin(roll)    ];
       [sin(yaw)*cos(pitch)    sin(yaw)*sin(pitch)*sin(roll)+cos(yaw)*cos(roll)    sin(yaw)*sin(pitch)*cos(roll)-cos(yaw)*sin(roll)    ];
       [-sin(pitch)            cos(pitch)*sin(pitch)                               cos(pitch)*cos(yaw)
               ];
   ];
end

function [A] = rotationMatrixDeg(yaw, pitch, roll)
   A = rotationMatrix(yaw/360*2*pi, pitch/360*2*pi, roll/360*2*pi);
end
