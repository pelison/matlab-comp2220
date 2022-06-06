%question 1 B
clear;clc
k=2000;c=100;m1=1000;m2=2000;
t(1)=0;m(1,:)=[20,10,20,20];
dt=0.001;

n=1;
while t(n)<4
   
    t(n+1)=t(n)+dt;
    v1=m(n,1);x1=m(n,2);v2=m(n,3);x2=m(n,4);
    slopes=[(k*(x2-x1)+c*(v2-v1))/m1,v1,-(k*(x2-x1)+c*(v2-v1))/m2,v2];
    m(n+1,:)=m(n,:)+slopes*dt;
    n=n+1;
end
m=[t',m];
fprintf('\nt=%5.2f\tv1=%5.2f\tx1=%5.2f\tv2=%5.2f\tx2=%5.2f',m(n-1,:))
%plot(m(:,1),m(:,2));
%hold on
%plot(m(:,1),m(:,3));
%plot(m(:,1),m(:,4));
%plot(m(:,1),m(:,5));
%legend('v1','x1','v2','x2')