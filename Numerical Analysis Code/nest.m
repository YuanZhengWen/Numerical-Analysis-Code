%Ƕ�׳˷�
%ʹ��Horner����
%���룺����ʽ�Ľ�d
%  d+1��ϵ�����ɵ�����c
%  x������Ҫ������ֵ��xλ��
%  d�����㹹�ɵ�����b
%���������ʽ��x���Ӧ��ֵy
function y=nest(d,c,x,b)
if nargin<4,b=zeros(d,1);end
y=c(d+1);
for i=d:-1:1
    y=y.*(x-b(i))+c(i);
end
