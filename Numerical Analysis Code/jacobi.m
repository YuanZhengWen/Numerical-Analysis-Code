%Jacobi��������ⷽ����
function [x,n]=jacobi(A,b,x0,eps,it_max)
% AΪϵ������bΪ������x0Ϊ��ʼ������epsΪ����
% it_maxΪ����������
% xΪ������Ľ⣬nΪ��������
if nargin==3
    eps=1.0e-5;
    M=200;
elseif nargin < 3
        disp('�����������');
        return
elseif nargin==5
            M=it_max;
end
D=diag(diag(A));%��A�ĶԽǾ���
L=tril(A,-1);%��A�������Ǿ���
U=triu(A,1);%��A�������Ǿ���
B=D\(L+U);
f=D\b;
x=f-B*x0;
n=1;%��������
while norm(x-x0)>=eps
    x0=x;
    x=f-B*x0
    n=n+1;
    if (n>=M)
        disp('�����������࣬���ܲ�����')
        return
    end
end


        

