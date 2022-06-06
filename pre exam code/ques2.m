%Question 2b
clear;clc;
[a,b]=ode45(@slope,[0:.1:1],[1,0]);
fprintf('t=%6.3f\ty=%6.3f\tx=%6.3f',a(end),b(end,:))
function out=slope(t,G)
y=G(1);x=G(2);
out=[1/((1+x)^t);1/((1+y)^t)];
end