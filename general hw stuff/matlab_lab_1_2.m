
x=[0:25];
y=[0,21.673,35.026,42.946,47.247,49.112,49.331,48.447,46.836,44.76,42.407,39.908,37.357,34.82,32.241,29.95,27.669,25.508,23.474,21.57,19.793,18.142,16.611,15.196,13.89,12.687];
trap_method(x,y)
simpson_1_3(x,y)

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
if ~(interval==[]||interval == 0 )
sum="intervals not equal";
return
end
sum=simpson(x,y,[],'1/3');
end