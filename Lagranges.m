clc
clear all
x=0.43;
X=[0 0.25 0.5 0.75];
y=[1 1.64872 2.71828 4.48169];
s=0;
for i=1:size(X,2)
    x1=X;
    x1(i)=[];
    l(i)=prod(x-x1)./prod((X(i)-x1));
end
Y=sum(l.*y);
Y

