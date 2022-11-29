clc;
clear all;
f=@(x) x^3+4*x^2-10;
a=1;
b=1.5;
tol=10^-4;
n=0;
if (f(a)*f(b)<0)
    while((abs(b-a))/2>tol)
        c=(a+b)/2;
        if (f(c)*f(b)<0)
            a=c;
        else
            b=c;
        end
         n=n+1;
    end
   
end
disp(c)
disp(n)