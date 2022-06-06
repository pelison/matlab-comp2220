clear; clc;

bisect(0,35,.15,6.949)

function[out]=bisect(a,b,err,given)

i=0;
n=log2((b-a)/err);
n=ceil(n);
while i<=n
    it=(a+b)/2;
    fprintf('%9d\t%8f\t%8f\t%8f\t%8f\n',i,a,b,it,b-a)
    i=i+1;
    if(f(a)*f(b)<0)
        b=it;
    elseif(f(a,given)*f(b,given)>0)
        a=it;
    end
end
out=it;
end


function[val]=f(T,O)
Ta=T+273.15;
val=-8.621949*(10^11)/(Ta^4)+1.24588*(10^10)/(Ta^3)-6.642308*(10^7)/(Ta^2)+1.575701*(10^5)/Ta-139.3411-log(O);
end