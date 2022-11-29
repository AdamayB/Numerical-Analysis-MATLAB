clc;
clear all;
syms f(x);
f(x)= tan(x)-(4*x);
g=@(x) atan(4*x);
g1=@(x) x-(f(x)/diff(f));
a=1;
b=pi/2;
tol=10^-3;
x0=pi/2;
c=pi;
d=3*pi/2;
x1=3*pi/2;
y=g(x0);
y1=g(x1);
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
if(y1==x1)
    disp(x1)
end
if(f(c)*f(d)<0)
    while(abs(x1-y1)>tol)
        x1=y1;
        y1=g1(x1);
        if (abs(x1-y1)<=tol)
            break;
        end
       
    end
    
end
disp(y)
disp(y1)