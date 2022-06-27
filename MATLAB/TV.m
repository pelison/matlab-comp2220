function [Vwater] = TV(Dtank,Dpipe,Htank,Hwater) 

Rtank=(1/2*Dtank);
Rpipe=(1/2*Dpipe);
Hpipe=Htank-Rtank;
Htotal=Htank+Rtank;
Hempty=Htotal-Hwater;
Vpipe=Hpipe*pi*Rpipe^2;
VtankTot=4/3*pi*Rtank^3;
Vfilled=VtankTot-1/3*pi*Hempty^2*(3*Rtank-Hempty);
Vwater=Vpipe+Vfilled;
end