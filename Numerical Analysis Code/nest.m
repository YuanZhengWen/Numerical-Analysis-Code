%嵌套乘法
%使用Horner方法
%输入：多项式的阶d
%  d+1个系数构成的数组c
%  x坐标需要进行求值的x位置
%  d个基点构成的数组b
%输出：多项式在x点对应的值y
function y=nest(d,c,x,b)
if nargin<4,b=zeros(d,1);end
y=c(d+1);
for i=d:-1:1
    y=y.*(x-b(i))+c(i);
end
