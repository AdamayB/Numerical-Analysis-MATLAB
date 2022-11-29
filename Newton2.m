clc;
clear all;
syms f(x);
f(x)=cos(x)-x*exp(x);
d(x)=diff(f);
x0=pi/4;
tol=10^-4;
err=10;
while(abs(err)>tol)
    x1=x0-(f(x0)/d(x0));
    err=abs((x1-x0)/x1);
    x0=x1;
end
disp(double(x1))

