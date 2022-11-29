clc;
clear all;
syms f(x);
f(x)=exp(-x)*(x^2+5*x+2)+1;
d(x)=diff(f);
x0=-2;
tol=10^-4;
err=10;
while(err>tol)
    x1=x0-(f(x0)/d(x0));
    err=abs((x1-x0)/x1);
    x0=x1;
end
disp(double(x1))
