deriv(Elevm,ts)
function[out]=deriv(Elevm,ts)
out=zeros(length(Elevm),2);
temp=zeros(length(Elevm),1);
temp=gradient(Elevm,ts);
out(:,1)=ts;
out(:,2)=gradient(temp,ts);
end

