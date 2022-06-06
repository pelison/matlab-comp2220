clc; clear; clf;
 
[t,m] = ode45(@slope,[0 4],[20,10,20,20])
check = [t,m]
 
plot(check(:,1),check(:,[2:5]))
xlabel('time')
ylabel('something')
legend('v1','x1','v2','x2')
 
function out = slope(t,g)
k = 2000; c = 100; m1 = 1000; m2 = 2000;
v1 = g(1); x1 = g(2); v2 = g(3); x2 = g(4);
out(1) = (-k*(x2-x1)-c*(v2-v1))/m1;
out(2) = v1;
out(3) = (k*(x2-x1)+c*(v2-v1))/m2;
out(4) = v2;
out = out'
end
 
 
