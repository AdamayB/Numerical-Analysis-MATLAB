clc;
clear all;
f=@(x) cos(x)-sin(x)-0.5;
a=0;
b=pi/2;
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