
function [slope,intercept]=linear_least_square(x,y)
n=length(x);
i=1;
sum_x=0;
sum_y=0;
sum_xy=0;
sum_x_sq=0;
if length (y)~=n
    error('x and y sould have same length')
end
while i<=n
    sum_x=sum_x+x(i);
    sum_y=sum_y+y(i);
    sum_xy=sum_xy+x(i)*y(i);
    sum_x_sq=sum_x_sq+x(i)^2;
    i=i+1;
end
slope=(n*sum_xy-sum_x*sum_y)/(n*sum_x_sq-sum_x^2);
intercept=sum_y/n-slope*sum_x/n;
end