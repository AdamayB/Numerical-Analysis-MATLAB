clc;
clear all;
tol=10^-2;
a=1;
b=2;
x0=1;
f=@(x) 2*sin(pi*x)+x;
g=@(x) (asin(-x/2)/pi);
y=g(x0);
if(y==x0)
    disp(x0)
end
if(f(a)*f(b)<0)
    while(abs(x0-y)>tol)
        x0=y;
        y=g(x0);
        if (abs(x0-y)<=tol)
            break;
        end
        
    end
    
end
disp(y)
