%����sin��������1
%��3�׶���ʽ����sin����
%���룺x
%�����sin��x���Ľ���
function y=sin1(x);
%�����ֵ����ʽ
%����ϵ��
b=pi*(0:3)/6;yb=sin(b);% b�������
c=newtdd(b,yb,4);
%����ÿ�������x����x�ƶ���������
%�����в�ֵ����ʽ����ֵ
s=1;   %����sin�ķ���
x1=mod(x,2*pi);
if x1 > pi
    x1=2*pi-x1;
    s=-1;
end
if x > pi/2
    x1=pi-x1;
end
y=s*nest(3,c,x1,b);
