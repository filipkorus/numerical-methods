clear all; close all;

a = 1;
b = 94234234234239;
c = 5;

d = sqrt(b^2 - 4*a*c);

x1_tmp = (-b-d) / (2*a),
x2_tmp = (-b+d) / (2*a),

if abs(x1_tmp) > abs(x2_tmp)
    x1 = x1_tmp;
    x2 = 2*c / (-b-d);
else
    x1 = x2_tmp;
    x2 = 2*c / (-b+d);
end

x1, x2,
