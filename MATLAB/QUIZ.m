clear;
clc;
k=200;
c=100;
m1=1000;
m2=2000;
v1=20;
v2=20;
x1=10;
x2=20;
dx=x2-x1;
t=0;
dt=2; %removed for loop because it is not necessary
    v1=v1+((-k*dx+c*dx)/m1)*dt;
    v2=v2+((k*dx-c*dx)/m2)*dt;
    x1=x1+v1*dt;
    x2=x2+v2*dt;

    v1=v1+((k*dx-c*dx)/m1)*dt;
    v2=v2+((-k*dx+c*dx)/m2)*dt;
    x1=x1+v1*dt;
    x2=x2+v2*dt;

    fprintf('velocity:m1:%3.0f m2:%3.0f\nX:m1:%3.0f m2:%3.0f',v1,v2,x1,x2)


    