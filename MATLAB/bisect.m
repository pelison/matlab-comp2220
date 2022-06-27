clear; clc; 
A(1)=1; b(1)=13;
user_tol=.001
max_int=1000
yA=f(A(1))
yB=f(B(1))

if yA*yB>0
    error('bad bounds')
end
P(1)=(A(1)+B(1))/2
n=1;
while abs((B(n)-A(n))/2)>user_tol && n<max_int
    if f(A(n))*f(P(n))<0
        A(n+1)=A(n); B(n+1)=P(n);
    elseif f(P(n))*f(B(n))<0
        A(n+1)=P(n); B(n+1)=B(n);
    elseif f(P(n))==0
        root=P(n)
        break
    else 
        error('something went wrong')
    end
    P(n+1)=(A(n+1)+B(n+1))/2
    n=n+1
end
m=[A;B;P]'
fid=fopen('my_output.txt','w')
fprintf(fid,'\n\nformatted output\n\n')
fprintf(fid,'%8.3f\t&8.3\t&8.3f\n',m')
fclose(fid)


function out=f(x)
out=(x-3)^2-9
end