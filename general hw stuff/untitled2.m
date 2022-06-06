clear;
clc;
x0=0; xf=pi; dx=(pi/20);
slope=@(x,G)[cos(x),G(1),G(2)];
IV=[1,0,-1];
Matrix=eulers(slope,x0,dx,xf,IV)
x=Matrix(:,1);y=Matrix(:,4); 
y_analytical=-sin(x)+(x.^2)/2 + x-1;
slope2=@(x,G) [cos(x),G(1),G(2)]';
[x,GV]=ode45(slope2,[x0:dx:xf],IV);
y_ode=GV(:,3);
