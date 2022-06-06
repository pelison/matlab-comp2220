clc; clear;
f=@(x)x^3-1.8999*x^2+1.5796*x-2.1195;              %eq here
a=1;              %bound
b=2;              %bound
fid=fopen('out.txt','w');
formatSpec='n= %2f \ta= %8.6f \tb= %8.6f \n';
format long
tol=0.000005;
step=0.000005;
n=0;
while((b-a)/2>=step||(abs(f(a))>=tol&&abs(f(b))>=tol)&&n~=100)
    n=n+1;
    c=(a+b)/2;
    if(f(c)==0)
        break;
    elseif(f(a)*f(c)<0)
        b=c;
    else
        a=c;
    end
    err=abs((b-a)/2);
    fprintf(fid,formatSpec,n,a,b);
end
fclose(fid);