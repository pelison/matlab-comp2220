clear; clc;
%v=10:1:20
%sum(v)
%inputs
I_i=10;
I_f=20;
store=I_i;
next_num=I_i;
while next_num<I_f
    next_num=next_num+1;
    store=store+next_num;
end
store
