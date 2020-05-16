%构造sin计算器2
%利用9阶多项式近似sin曲线
%输入：x
%输出：近似sin（x）精确到小数点后10位
function y=sin2(x)
%计算插值多项式
%保存系数
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
