%matlab is expensive
%matlab is inclusive of features and easy to learn
%octave (matlab clone but free)
%python---- numpi(matlab transition library)
%excel starter sheet

%= assignment operator
%; suppressed output
%[] denote a matrix
%all built in functions are lowercase
clc;clear;clf;

m=[1,2,3;4 5 6]
d=m(2,3)
e=(1+2)*3
f=cos(pi/2)
v=m(2,:)
m2=m*m'
v3=-2:0
hold on
x=0:pi/100:2*pi;y=sin(x);
plot(x,y,'b*')
y2=cos(x);
plot(x,y2,'r*')
legend('sin(x)','cos(x')
title('trig fun')
xlabel('x(radians)')
ylabel('y(units unknown)')