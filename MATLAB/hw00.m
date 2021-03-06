clear;clc;
%experiment
t_e=(0:1:15)*60;
T_e=[146.5,133.7,124.2,115.7,106.2,104.3,97.8,93.7,91.9,86.4,82.1,80.9,79.2,77.9,76.5,75.9];
T_e=(T_e-32)/1.8;
%inputs
h= 5; %guess coef 2.5 to 25 w/m^/c
ID=.34;
th=.17;
OD=1.5;
OD=OD*2.54/100; %meters
ID=ID*2.54/100; %meters
th=th*2.54/100; %meters
As=(pi*OD^2/4-pi*ID^2/4)*2+pi*OD*th+pi*ID*th; %m^2

T_inf=73; %F ambient temperature
T_inf=(T_inf-32)/1.8; %C

C=.466; % J/(g C)
m=35.84; %g
dt=1; %time step in seconds
T(1)=146.5; % F
T(1)= (T(1)-32)/1.8; %C
t(1)=0; %time
n=1;
while t(n)<5000
Q_dot=h*As*(T(n)-T_inf);
E_out=Q_dot*dt; %J
DT=E_out/(m*C); %C
T(n+1)=T(n)+DT;
t(n+1)=t(n)+dt;
n=n+1;
end

plot(t,T)
hold on
plot(t_e,T_e,'r+')
