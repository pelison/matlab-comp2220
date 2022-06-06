clear; clc;

x=0:100;
y=0:100;
m=zeros(length(x),1);

for n=1:length(x)-1
    a=(y(n+1)-y(n))/(x(n+1)-x(n));
    m(n)=a;
end
m'
