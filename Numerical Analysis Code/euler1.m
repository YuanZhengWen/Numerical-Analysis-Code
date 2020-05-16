% 求解初值问题的欧拉方程
% 使用ydot.m计算微分方程右侧函数
% 输入：区间inter,初值y0，步数n
% 输出: 时间步t，解y
% euler1([0 1],1,10)
function [x,y]=euler1(inter,y0,n) 
x(1)=inter(1); y(1)=y0; 
h=(inter(2)-inter(1))/n; 
for i=1:n 
    x(i+1)=x(i)+h; 
    y(i+1)=eulerstep(x(i),y(i),h); 
end
plot(x,y)

function y=eulerstep(x,y,h) 
% 输入:x,当前值y,步长h
% 输出:在x+h的近似解
y=y+h*ydot(x,y);

function z=ydot(x,y) 
z=-x/y;

