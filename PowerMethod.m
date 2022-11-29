clc;
clear all;
A=[4 1 0;1 20 1;0 1 4];
x=[1;1;1];
error=10^-3;
k1=0;
n=100;
y=A*x;
k=max(y);
for i=1:n
    if(abs(k-k1)<=error)
        break
    else
        y=A*x;
        k=k1
        k=max(y);
        x=y/k;
    end
end
disp(x);
disp(k);