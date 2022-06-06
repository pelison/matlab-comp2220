clear; clc; clf;
 
[t,m] = ode45(@slope,[0, 1],[1,0])
check = [t,m]
 
plot(check(:,1),check(:,[2,3]))
legend('dy/dt','dxdt')
 
function out = slope(t,g)
    y1 = g(1); x1 = g(2);
    out(1) = 1/(1+x1).^t
    out(2) = 1/(1+y1).^t
    out = out'
end
