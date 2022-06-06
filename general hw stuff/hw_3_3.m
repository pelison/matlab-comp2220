clear;
clc;

L=600;
E=50000;
I=30000;
w=2.5;
c=w/(120*E*I*L);

a=0;
b=L;
E=b-a;
while E> 10^(-3)
    c=(b-a)/2;
    if(c*(-5*a^4+6*(L^2)*a^2-L^4))*(c*(-5*c^4+6*(L^2)*c^2-L^4))>0
        b=c;
    else
        a=c;
    end
    E=b-a;
end

x=c;
y=c*(-x^5+2*L^2*x^3-L^4*x);
fprintf('max deflection:x=%3.3f n/cm\n',x);
fprintf('value of max deflection:y=%3.3f cm',y);

