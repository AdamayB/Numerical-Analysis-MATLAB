clc;
clear all;
f=@(x) x^2-29;
a=5;
b=6;
tol=10^-3;
if (f(a)*f(b)<0)
    while((abs(b-a))/2>tol)
        c=(a+b)/2;
        if (f(c)*f(b)<0)
            a=c;
        else
            b=c;
        end
    end
end
disp(c)