function out = eulers(slope,x0,dx,xf,y0)
x(1)=x0;
F(1,:)=y0;
n=1;
 
while x(n)<xf
    F(n+1,:) = F(n,:) + slope(x(n),F(n,:))*dx;
    x(n+1) = x(n) + dx;
    n=n+1;
end
out =[x',F];
