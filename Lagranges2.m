clc
clear all
x=[1950 1960 1970 1980 1990 2000];
y=[151326 179323 203302 226542 249633 281422];
X=1995;
for i=1:size(x,2)
    x1=x;
    x1(i)=[];
    l(i)=prod(X-x1)./prod(x(i)-x1);
end
Y=sum(l.*y);
Y