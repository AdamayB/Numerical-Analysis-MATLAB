clc
clear all
A=[5 5 0 0 0;0 0 1 -1 -1;0 0 0 2 -3;1 -1 -1 0 0;0 5 -7 -2 0];
b=[5.5;0;0;0;0];
c=[A b]
for i=1:size(c,1)
    for j=i+1:size(c,1)
        m=c(j,i)/c(i,i);
        c(j,:)=c(j,:)-m*c(i,:);
    end
end
c