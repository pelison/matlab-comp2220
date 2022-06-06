clear;
clc; 
t0=0;
v0=20;
g=32.2;
tmax=1;
dt=.0125;
v(1)=v0;
t(1)=t0;
vterm=20;
n=1;
while t(n)<=tmax
    acc=-g*(1+1*sign(v(n))*((v(n)^2)/(vterm^2)));
    v(n+1)=v(n)+acc*dt;
    t(n+1)=t(n)+dt;
    n=n+1;
end