% Simpson's 1/3 Method

function[simpson]=simp_method(x,y)

%Checking the vectors length are same
if length(x)~=length(y)
    error('Vectors must be of equal length')
end

% Checking the X vectors are equally spaced
i=1;
while i<length(x)-1
    if (x(i+1)-x(i))~=(x(i+2)-x(i+1))
        error(' x values are not equally spaced')
    end
    i=i+1;
end

% Checking that the vectors are of odd number
if (length(x)/2)==round((length(x)/2))
    error('x values should be odd in number')
end

 i=1; n=1;
 while i<length(x)-1
     simpson(n)=(x(3)-x(1))*((y(i)+4*y(i+1)+y(i+2))/6);
     i=i+2;
     n=n+1;
 end
 simpson=sum(simpson);
end



