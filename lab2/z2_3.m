clear all; close all;

%a=fi(11.25,0,8,4); a.bin,
%b=fi(4.75,0,8,4); b.bin,
%c=fi(4.75,1,8,4); c.bin,
%d=fi(-4.75,1,8,4); d.bin,

%p1=fi(pi,0,8,6), p1.bin,
%p2=fi(pi,1,8,6), p2.bin,
p3=fi(pi,0,16,12), p3.bin,
%p4=fi(pi,1,16,12), p4.bin,

bin=p3.bin;
przeliczone = 0;
for i=5:16 % TUTAJ WPISAC 3:8 (dla 8) LUB 5:16 (dla 16) !!! 
    if str2double(bin(i)) == 1
        przeliczone = przeliczone + 2^(-1*(i-4)); % (i-2) dla 8, (i-4) dla 16
    end
end
przeliczone = przeliczone + 3;
disp(przeliczone)


error = pi-p3.double