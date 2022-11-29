clc
clear all
b=0.25;
a=-0.25;
f=@(x) (cos(x))^2;
N=20;
h=(b-a)/N;
s=0;
if rem(N,2)==0
    for i = 1:N-1
        if rem(i,2)==1
            s=s+4*f(a+i*h);
        else
            s=s+2*f(a+i*h);
        end
    end
end
Y=(h/3)*(f(a)+f(b)+s);
Y