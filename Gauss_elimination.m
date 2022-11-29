clc
clear all
a=[10 8 -3 1; 2 10 1 -4; 3 -4 10 1;2 2 -3 10];
b=[16; 9; 10; 11 ];
c=[a b];
for j=1: 4
    for i=j+1:4       
        m=c(i,j)/c(j,j);
        c(i,:)=c(i,:)-m*c(j,:);
    end
end
c
x=zeros(4,1);
x(4)=c(4,5)/c(4,4)
for i=3:-1:1
    sum=0;
    for k=i+1:4
        sum=sum+c(i,k)*x(k);
    end
    x(i)=(c(i,5)-sum)/c(i,i);
end
x

    

        
