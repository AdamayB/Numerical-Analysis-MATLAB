clc
clear all
A=[10 8 -3 1;2 10 1 -4;3 -4 10 1;2 2 -3 10];
b=[16 9 10 11];
c=[A b];
c(1,2)
for i=1:size(c,1)
    for j=i+1:size(c,1)
        m=c(j,i)/c(i,i);
        c(j,:)=c(j,:)-m*c(i,:);
    end
end