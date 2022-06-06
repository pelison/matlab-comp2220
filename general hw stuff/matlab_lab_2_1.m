




clc;
clear;
clf;
%bets under 7
maxbets=10000;
house(1)=10000;
roll_vector=rollDice(maxbets);
i=1;
while i<=maxbets
    if roll_vector(i)<7
        house(i+1)=house(i)-1;
    else
        house(i+1)=house(i)+1;
    end
    i=i+1;
end
betnumber=0:maxbets;
[slope,int]=linear_least_square_OU(betnumber,house);
plotL=slope*[0,maxbets]+int;
%fig 1
plot([0,maxbets],plotL,'m--',betnumber,house,'c')
xlabel('Bet Number')
ylabel('House Value,$')
title('Player bet under 7')
legend('Predicted Return','Actual Return')
fprintf('Average rate of return is %1.3f[[$/bet]]\n',slope)
%bets over 7
house(1)=10000;
roll_vector=rolldice(maxbets);
i=1;
while i<=maxbets
    if roll_vector(i)>7
        house(i+1)=house(i)-1;
    else
        house(i+1)=house(i)+1;
    end
    i=i+1;
end
betnumber=0:maxbets;
[slope,int]=linear_least_square_OU(betnumber,house);
plotL=slope*[0,maxbets]+int;
%fig 2
plot([0,maxbets],plotL,'m--',betnumber,house,'c')
xlabel('Bet Number')
ylabel('House Value,$')
title('Player bet over 7')
legend('Predicted Return','Actual Return')
fprintf('Average rate of return is %1.3f[[$/bet]]\n',slope)
%bets that equal 7
house(1)=10000;
roll_vector=rolldice(maxbets);
i=1;
while i<=maxbets
    if roll_vector(i)==7
        house(i+1)=house(i)-5;
    else
        house(i+1)=house(i)+1;
    end
    i=i+1;
end
betnumber=0:maxbets;
[slope,int]=linear_least_square_OU(betnumber,house);
plotL=slope*[0,maxbets]+int;
%fig 3
plot([0,maxbets],plotL,'m--',betnumber,house,'c')
xlabel('Bet Number')
ylabel('House Value($)')
title('Player bets exactly 7')
legend('Predicted Return','Actual Return')
fprintf('Average rate of return: %1.3f[[$/bet]]\n',slope)




























function [slope,int] = linear_least_square_OU(x,y)
n=length(x);
sumx=0;
i=1;
while i<=n
    sumx=x(i)+sumx;
    i=i+1;
end
sumxy=0;
i=1;
while i<=n
    sumxy=x(i)*y(i)+sumxy;
    i=i+1;
end
sumxisqd=0;
i=1;
while i<=n
    sumxisqd=x(i)^2+sumxisqd;
    i=i+1;
end
sumy=0;
i=1;
while i<=n
    sumy=y(i)+sumy;
    i=i+1;
end
slope=(n*sumxy-sumx*sumy)/(n*sumxisqd-sumx^2);
ybar=sumy/n;
xbar=sumx/n;
int=ybar-slope*xbar;
end

function out = rollDice(rolls)
i=1;
out=[];
while i<=rolls
    out(i)=ceil(random('uniform',0,6))+ceil(random('uniform',0,6));
    i=i+1;
end
end





