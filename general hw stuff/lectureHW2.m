clear;clc
D=2;
R=D/2;
H=1.2;
rho=500;
nwL=5;
dH=D/nwL;
rho_min=500;
rho_inc=250;
rho_max=1500;
D_min=2;
D_inc=.5;
D_max=4;
m=rho*vol_sc(R,H);
%step 1 compute the mass for a given tank diameter, liquid level, and
%liquid
%density

%step 4 loop to vary tank diameter

%step 5 print the tank diamter

%step 6 print the column headers

%step 3 loop to vary the density

%step 7 print the density
%step 2 for a scalar tank diameter scalar density and scalar number of
%water levels print a row of masses (vary the water level)

%end for step 3

%end step 4

D=D_min;
while D<=D_max
fprintf('\n\nD=%7.3f\n\n',D)
rho=rho_min;
while rho<=rho_max
dH=D/nwL;
H=dH;
while H<=D
R=D/2;
m=rho*vol_sc(R,H);
fprintf('%7.0f\t',m)
H=H+dH;
end
fprintf('\n')
rho=rho+rho_inc;
end
D=D+D_inc;
end




function out=vol_sc(r,h)
out=(1/3)*pi*h^2*(3*r-h);
end
