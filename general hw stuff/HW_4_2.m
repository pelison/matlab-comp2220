clear;
clc;

x=;%insert vector
y=;%insert vecotr
i=1;
n=length(x);
X=zeros(n-1,1);
Y=zeros(n-1,1);
for i=1:n-1
X(i)=(x(i)+x(i+1))/2;
Y(i)=((y(i+1)-y(i))/(x(i+1)-x(i)));
end
disp([X Y]);