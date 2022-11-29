clc
clear all
f=@(t,y) y-t^2+1;
h=0.2;
x=0:h:2;
y=zeros(1,length(x));
t0=0;
y0=0.5;
for i=1:(length(x)-1)
    y1=y0+h*f(t0,y0);
    t1=t0+h;
    y1=y0+(h/2)*(f(t0,y0)+f(t1,y1));
    t0=t1;
    y0=y1;

end
y