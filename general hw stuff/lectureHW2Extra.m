clear; clc;

xi=7; %placeholder guess
xf=17; %placeholder
yi=xi^2-9;
yf=xf^2-9;

if yi*yf<0
    fprintf('good guess')
%then bisect the interval, but don't really know how to do that and then
%check both intervals, 

else
    fprintf('bad guess')
end
    
