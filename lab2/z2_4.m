clear all; close all;

num2bitstr( single( (1+1/4)*2^(-124) )),
num2bitstr( single( -5.877472*10^(-38) )),

a = num2bitstr(single(299792458)),
b = num2bitstr(double(299792458)),
c = float2num(a, 32),