%构造sin计算器键1
%以3阶多项式近似sin曲线
%输入：x
%输出：sin（x）的近似
function y=sin1(x);
%计算插值多项式
%保存系数
b=pi*(0:3)/6;yb=sin(b);% b保存基点
c=newtdd(b,yb,4);
%对于每个输入的x，将x移动到基础域
%并进行插值多项式的求值
s=1;   %纠正sin的符号
x1=mod(x,2*pi);
if x1 > pi
    x1=2*pi-x1;
    s=-1;
end
if x > pi/2
    x1=pi-x1;
end
y=s*nest(3,c,x1,b);
