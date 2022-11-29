clc;
clear all;
x0=-2;
x1=-1;
syms f(x);
f(x)=exp(-x)*(x^2+5*x+2)+1;
tol=10^-4;
x2=x1-((x1-x0)*f(x1)/(f(x1)-f(x0)));
while(abs(x2-x1)>tol)
    x2=x1-((x1-x0)*f(x1)/(f(x1)-f(x0)));
    x0=x1;
    x1=x2;
    
end
disp(double(x2))
disp(double(f(x2)))
