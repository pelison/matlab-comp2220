clc; clear;
 
x = [0:10];
n=1;
i=1;
 
% Trapezoid Method
while n < length(x)
    I(n) = (x(n+1)-x(n))*(f(x(n+1))+f(x(n)))/2;
    n=n+1;
end
Trap_Integral = sum(I)
 
% Simpson's 1/3 Method
while i < length(x)-1
    S(i) = (x(i+2)-x(i))*(f(x(i))+4*f(x(i+1))+f(x(i+2)))/6;
    i=i+2;
end
Simp_Integral = sum(S)
 
function out = f(x)
    out = x^2-9;
end
 
 
 
