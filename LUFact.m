clc
clear all
A=[2 -1 1;3 3 9;3 3 5];
L=A;
U=A;
for i=1:3
    for j=i+1:3
        m=L(j,i)/L(i,i);
        L(j,:)=L(j,:)-m*L(i,:);
    end
end
L
U
for i=1:3
    for j=3:-1:1
        m=U(i,j)/U(j,j);
        U(i,:)=U(i,:)-m*U(j,:);
    end
end
U