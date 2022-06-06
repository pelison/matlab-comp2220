clear;
clc;

v=366.667;
d=4.123340358; %drag excluding velocity term
b=64.348098; %brakes
t=0;
distance=0;
fNet=nan;
a=nan;
fP=nan;
m=3000;
wTot=0;
while v>=0
    t=t+1;
    fNet=-b-(d*(v^2/2));
    fP=-(d*(v^2/2));
    a=fNet/m;
    v=v+a;
    distance=distance+v;
    vMat(t,:)=v;
    pMat(t,:)=distance;
    fPMat(t,:)=fP;
    wTot=wTot+fNet*v;
end
wTot
table(vMat,pMat,fPMat)