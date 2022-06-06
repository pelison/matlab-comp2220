clc; clear;
 
a=1;
b=2;
c=2;
x = [0:10];
 
% Forward Difference
while a < length(x)
    FD(a) = (f(x(a+1))-f(x(a)))/(x(a+1)-x(a));
    a=a+1;
end
FD(a) = NaN;
m=[x;FD];
fprintf('%8.3f\t%8.3f\n',m)
 
fprintf('\n') % Gap
 
% Backward Difference
while b < length(x)+1
    BD(b) = (f(x(b))-f(x(b-1)))/(x(b)-x(b-1));
    b=b+1;
end
BD(1) = NaN;
n = [x;BD];
fprintf('%8.3f\t%8.3f\n',n)
 
fprintf('\n') % Gap
 
% Center Difference
while c < length(x)
    CD(c) = (f(x(c+1))-f(x(c-1)))/(x(c+1)-x(c-1));
    c=c+1;
end
CD(1) = NaN; CD(c) = NaN;
o = [x;CD];
fprintf('%8.3f\t%8.3f\n',o)
 
function out = f(x)
    out = x^2-9;
end
 
 
 
 
