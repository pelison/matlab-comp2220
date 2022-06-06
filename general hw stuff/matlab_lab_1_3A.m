yInit=1028.157595761;
yCurr=yInit;
ySet=734.39828262234;
band=146.87965649455;
out=nan;
mat=zeros(1,2000);
t=1;
for(1:length(mat))
    t=t+1;
    yCurr=yCurr-(40/60);
if yCurr>ySet+band
    out=0;
elseif yCurr<ySet-band
    out=1;
else
    out=out;
    plot(t,yCurr)
end

