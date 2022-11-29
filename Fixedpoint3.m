clc;
clear all;
f=@(x) x^3+4*x^2-10;
g=@(x) 0.5*sqrt(10-x^3);
a=1;
b=2;
x0=1.5;
y=g(x0);
tol=10^-3;
if(x0==y)
    disp(x0)
end

if(f(a)*f(b)<0)
    while(abs(x0-y)>tol)
        x0=y;
        y=g(x0);
        if(abs(x0-y)<=tol)
            break;
        end
    end
end
disp(y)
