clc
clear all
syms f(x);
f(x)=x^2-17;
x0=4;
x1=5;
x2=x1-((x1-x0)*f(x1)/(f(x1)-f(x0)));
tol=10^-3;
while(abs(x2-x1)>tol)
    x2=x1-((x1-x0)*f(x1)/(f(x1)-f(x0)));
    x0=x1;
    x1=x2;
    
end
disp(double(x2))
