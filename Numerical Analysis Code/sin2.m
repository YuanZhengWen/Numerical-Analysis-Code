%����sin������2
%����9�׶���ʽ����sin����
%���룺x
%���������sin��x����ȷ��С�����10λ
function y=sin2(x)
%�����ֵ����ʽ
%����ϵ��
n=10;
b=pi/4+(pi/4)*cos((1:2:2*n-1)/(2*n));
yb=sin(b);
c=newtdd(b,yb,n);
s=1;
x1=mod(x,2*pi);
if x1>pi
    x1=2*pi-x1;
    s=-1;
end
if x>pi/2
    x1=pi-x1;
end
y=s*nest(n-1,c,x1,b);
