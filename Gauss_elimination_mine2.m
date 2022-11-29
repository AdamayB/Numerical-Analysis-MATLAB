clc
clear all
A=[pi sqrt(2) -1 1;exp(1) -1 1 2;1 1 -sqrt(3) 1;-1 -1 1 -sqrt(5)];
b=[0;1;2;3];
c=[A b];
for i=1:size(c,1)
    for j=i+1:size(c,1)
        m=c(j,i)/c(i,i);
        c(j,:)=c(j,:)-m*c(i,:);
    end
end
c
x=zeros(4,1);
x(4)=c(4,5)/c(4,4);
for i=3:-1:1
    s=0;
    for j=i+1:4
        s=s+c(i,j)*x(j)
    end
    x(i)=(c(i,5)-s)/c(i,i);
end
x