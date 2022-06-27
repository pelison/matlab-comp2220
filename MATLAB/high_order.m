dt=0.1;
x1=0.5;v1=0;x2=0;v2=1;
tv=0;
tf=0.1;n=1;
M=[v1,x1,v2,x2];
while tv(n)<=tf
tv(n+1)=tv(n)+dt;

% v1(n+1)=v1(n)+v1_dot*dt;
%
% x1(n+1)=x1(n)+x1_dot*dt;
%
% v2(n+1)=v2(n)+v2_dot*dt;
%
% x2(n+1)=x2(n)+x2_dot*dt;
M(n+1,:)=M(n,:)+slope(tv(n),M(n,:))*dt;
n=n+1;
end
check=M

function out=slope(t,GV)
v1=GV(1);x1=GV(2);v2=GV(3);x2=GV(4);
k1=100;k2=200;c1=50;c2=100;m1=10;m2=20;
out(1)=(-k1*x1-c1*v1+k2*(x2-x1)+c2*(v2-v1))/m1;
out(2)=v1;
out(3)=((-k2*(x2-x1))-c2*(v2-v1))/m2;
out(4)=v2;
end