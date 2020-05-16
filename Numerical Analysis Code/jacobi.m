%Jacobi迭代法求解方程组
function [x,n]=jacobi(A,b,x0,eps,it_max)
% A为系数矩阵，b为常数，x0为初始向量，eps为精度
% it_max为最大迭代次数
% x为方程组的解，n为迭代次数
if nargin==3
    eps=1.0e-5;
    M=200;
elseif nargin < 3
        disp('输入参数不足');
        return
elseif nargin==5
            M=it_max;
end
D=diag(diag(A));%求A的对角矩阵
L=tril(A,-1);%求A的下三角矩阵
U=triu(A,1);%求A的上三角矩阵
B=D\(L+U);
f=D\b;
x=f-B*x0;
n=1;%迭代次数
while norm(x-x0)>=eps
    x0=x;
    x=f-B*x0
    n=n+1;
    if (n>=M)
        disp('迭代次数过多，可能不迭代')
        return
    end
end


        

