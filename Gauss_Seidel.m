clc
clear all
A=[4.63 1.21 3.22;-3.07 5.48 2.11;1.26 3.11 4.57];
b=[2.22;-3.17;5.11];
x=zeros(3,1);
%x=zeros(1,size(A,1));
tol=10^-5;
err=Inf;
i=0;
while(abs(err)>tol)
    x_old=x;
    for i=1:size(A,1)
        s=0;
        for j=1:i-1
            s=s+A(i,j)*x(j);
        end
        for j=i+1:size(A,1)
            s=s+A(i,j)*x_old(j);
        end
        x(i)=(1/A(i,i))*(b(i)-s);
    end
    i=i+1;
    err=abs(x_old-x);
end
x