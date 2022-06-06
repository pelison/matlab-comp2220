clc; clear;
% Bisection Method
A(1)=1; B(1)=12; yA=f(A(1)); yB=f(B(1));
if yA * yB > 0
    error('bad bounds')
end
 
if yA * yB < 0
    P(1) = (A(1)+B(1))/2;
end
 
n=1;
while n < 30
    if f(A(n))*f(P(n)) < 0
        A(n+1) = A(n)
        B(n+1) = P(n)
    else f(B(n))*f(P(n)) < 0
        B(n+1) = B(n)
        A(n+1) = P(n)
    end
    n = n+1;
    P(n) = (A(n)+B(n))/2;
end
 
function out=f(x) 
    out=x^2-9;
end 
 
