clc
clear all
x=[0 0.25 0.5 0.75];
y=[1 1.64872 2.71828 4.4816];
X=0.43;
n=size(x,2);
DD=zeros(n,n);
DD(:,1)=y;
for i=2:n
    for j=1:(n-i+1)
        num=DD(j+1,i-1)-DD(j,i-1);
        den=x(i+j-1)-x(j);
        DD(j,i)=num./den;
    end
end
DD
for i=1:n-1
    p(i)=prod(X-x(1,1:i))*DD(1,i+1);
end
Y=y(1,1)+sum(p);
Y