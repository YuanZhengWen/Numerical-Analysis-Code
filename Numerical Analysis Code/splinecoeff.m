%��������ϵ��
%������������ϵ��
%�Լ����������v1��vn
%���룺���ݵ�x��y����
%�����ϵ������b1,c1,d1
function coeff=splinecoeff(x,y)
n=length(x);v1=0;vn=0;
A=zeros(n,n);
r=zeros(n,1);
for i=1:n-1     %����delta
    dx(i)=x(i+1)-x(i);
    dy(i)=y(i+1)-y(i);
end
for i=2:n-1    %����A����
    A(i,i-1:i+1)=[dx(i-1) 2*(dx(i-1)+dx(i)) dx(i)];
    r(i)=3*(dy(i)/dx(i)-dy(i-1)/dx(i-1));
end
%�˵�����
%ʹ��5�Ե��е�һ��
A(1,1)=1;%��Ȼ��������
A(n,n)=1;
%���ʵ�������
%A(1,1)=2;r(1)=v1;
%A(n,n)=2;r(n)=v(n);
%ǯ������
%A(1,1:2)=[2*dx(1) dx(1)];r(1)=3*(dy(1)/dx(1)-v1);
%A(n,n-1:n)=[dx(n-1) 2*dx(n-1)];r(n)=3*(vn-dy(n-1)/dx(n-1));
%������������
%A(1,1:2)=[1 -1]; 
%A(n,n-1:n)=[1 -1];
%��Ť������
%A(1,1:3)=[dx(2) -(dx(1)+dx(2)) dx(1)];  
%A(n,n-2:n)=[dx(n-1) -(dx(n-2)+dx(n-1)) dx(n-2)];
coeff=zeros(n,3);
coeff(:,2)=A\r;  %���ϵ��c
for i=1:n-1     %���ϵ��b��d
    coeff(i,3)=(coeff(i+1,2)-coeff(i,2))/(3*dx(i));
    coeff(i,1)=dy(i)/dx(i)-dx(i)*(2*coeff(i,2)+coeff(i+1,2))/3;
end
coeff=coeff(1:n-1,1:3);


