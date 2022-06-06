clear; clc;

g=9.8;
y0=1;
v0=100;
x0=0;
theta=15:15:85;
x=[];
y=[];
t=linspace(0,30);
for i=1:length(theta);
    x=[x;x0+v0*cosd(theta(i)).*t];
    y=[y;y0+v0*sind(theta(i)).*t-(g/2)*t.^2];
end
for i=1:length(theta)
    Y=y(i,:);
    Y=Y(Y>0);
    X=x(i,1:length(Y));
    plot(X,Y);
    hold on
    X=[];
    Y=[];
end
xlabel('x');
ylabel('y');
