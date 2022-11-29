clc
clear all
A=[4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];
b=[-2 ;-1; 0; 1];
w=1.2;
x=[0;0;0;0];
itr=50;
tol=10^-3;
miter=100;
err=10^-2;
iter=1;
D=diag(diag(A));
L=tril(A)-D;
U=triu(A)-D;
H=inv(D+w*L)*((1-w)*D-w*U);
C=w*inv(D+w*L)*b;
e=max(eig(H));
if e<1
    while sum(abs(err)<=tol)~=size(A,1)
        x_new=H*x+C;
        err=x_new-x;
        x=x_new;
        iter=iter+1;
        if(iter==miter)
            break;
        end
    end
else
    disp("error")
end
x