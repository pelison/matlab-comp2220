clear;clc;clf
ki=.007;
d=5; %tank diameter in feet
dt=2; %time step in seconds
y_0=1; %initial water level ft
y_sp=5; %set point (ft)
band=1; %dead band (ft)
v_dot_in_max=100; %maximum inflow rate gpm
v_dot_in_max=v_dot_in_max/448.8; %ft^3/s
tmax=2000; %maximum time (seconds)
area=(pi*d^2)/4; %ft^2
UL=y_sp+band/2;LL=y_sp-band/2; %ft

y(1)=y_0;t(1)=0; %initialize time and y vectors
if y(1)>UL
vp=0;
elseif y(1)<LL
vp=1;
else
vp=1;
end

vol_in=vp*v_dot_in_max*dt; %water into tank in ft^3
vol_out=vdot_out(t(1))*dt; %water out in ft^3
dv=vol_in-vol_out; %ft^3
dy=dv/area; %ft
y(2)=y(1)+dy
t(2)=t(1)+dt
n=2;E_area=0;
while t(n)<tmax

vp_p=-(y(n)-y_sp)/band+1/2;
vp_i=-ki*E_area;
vp=vp_p+vp_i;
if vp>1
vp=1;
elseif vp<0
vp=0;
end

vol_in=vp*v_dot_in_max*dt; %water into tank in ft^3
vol_out=vdot_out(t(n))*dt; %water out in ft^3
dv=vol_in-vol_out; %ft^3
dy=dv/area; %ft
y(n+1)=y(n)+dy;
if vp_p+vp_i<1 && vp_p+vp_i>0
E_area=E_area+((y(n+1)-y_sp)+(y(n)-y_sp))/2*dt;
end

t(n+1)=t(n)+dt;
n=n+1;
end
plot(t/60,y,'b.')
ylabel('y(ft)')
xlabel('time (minutes)')
function out=vdot_out(t)
out=40; %gpm
out=out/448.8; %ft^3/s
end