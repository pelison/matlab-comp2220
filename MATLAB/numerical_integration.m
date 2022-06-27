clear;
clc;
x=[0:20:340,350];
y=[50,75,85,95,120,140,135,130,145,185,200,200,190,150,140,140,110,80,60];
c=1;
csum=0;
while c<length(x)
    next_num=((y(c)+y(c+1))/2)*(x(c+1)-x(c));
    csum=csum+next_num;
    c=c+1;
end
csum;
%vectorize this
new_way=sum(((y(1:nx-1)+y(2:nx))./2).*diff(x));
