clc;
clear all;
A=[1 1 0 0;1 2 0 1;0 0 3 3;0 1 2 3];
X=[1;1;0;1];
n=3;
k1=0;
error=10^-3;
Y=A*X;
K=max(Y);
for i=1:n
    if (abs(K-k1)<=0)
        break
    else
        Y=A*X;
        K=k1;
        K=max(Y);
        X=Y/K;
    end
    fprintf('Iteration: %d\n',i)
    disp(X)
    disp(K)
end


