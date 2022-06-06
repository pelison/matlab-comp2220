clear;
clc;


compute(,) %insert vectors here




function compute(x,y)
    min_length=length(x);
    diff = zeros(length(y),3);
    if(length(x)> length(y))
        min_length = length(y);
        diff = zeros(length(x),3);
    end
        for i=1:min_length-1
            h=x(i+1)-x(i);
            diff(i,1)=x(i);
            diff(i,2)=(y(i+1)-y(i))/h;
        end
        for i=min_length:length(x)
            diff(i,1)=x(i);
            diff(i,2)=NaN;
        end
        for i=min_length+1:length(y)
            diff(i,1)=NaN;
            diff(i,2)=NaN;
        end
        diff(1,3)=NaN;
        for i=2:min_length
            h=x(i)-x(i-1);
            diff(i,3)=(y(i)-y(i-1))/h;
        end
        for i=min_length+1:length(x)
            diff(i,1)=x(i);
            diff(i,3)=NaN;
        end
        for i=min_length+1:length(y)
            diff(i,1)=NaN;
            diff(i,3)=NaN;
        end
    disp(diff);
end