clc
clear all
f=@(x) (cos(x))^2;
a=-0.25;
b=0.25;
N=4;
h=(b-a)/N;
s=0;
for i=1:N-1
    
    s=s+2*f(a+i*h);
end
Y=(h/2)*(f(a)+f(b)+s);
Y