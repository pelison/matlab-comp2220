clear;
clc;
t0=0; tf=15; dt=.05; c=200;k=20;m=20;
slope = @(t,G)[(-c*G(1) - k*G(2))/m, G(1)];
IV=[0,1];
matrix = eulers(slope,t0,dt,tf,IV);
t=matrix(:,1);x=matrix(:,3);
 
plot(t,x)
hold on
 
slope2 = @(x,G)[(-c*G(1) - k*G(2))/m, G(1)]';
[t2,G] = ode45(slope2,[t0:dt:tf],IV);
ode = [t2,G];
t1=ode(:,1);x2=ode(:,3);
 
plot(t1,x2,'r.')
xlabel('time')
ylabel('displacement')
legend('euler','ode45')