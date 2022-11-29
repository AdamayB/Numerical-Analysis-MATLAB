clc;
clear all;
err=10;
syms f(x);
f(x)= x^2-17;
x0=5;
tol=10^-3;
d(x)=diff(f);
while(abs(err)>tol)
    x1=x0-(f(x0)/d(x0));
    err=abs((x1-x0)/x1);
    x0=x1;
end
disp(double(x1))