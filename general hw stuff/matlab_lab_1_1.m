function sum=trap_method(x,y)
if length(x)~=length(y)
    sum="length is not equal";
    return
end
sum=trapz(x,y);
end





function sum=simpson_1_3(x,y)
if length(x)~=length(y)
sum="length is not equal";
return
end
interval=range(x(2:end)-x(1:end-1));
if ~(interval == [] || interval == 0 )
sum="intervals not equal";
return
end
sum=simpson(x,y,[],'1/3');
end