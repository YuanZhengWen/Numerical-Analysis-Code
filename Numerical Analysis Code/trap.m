% 求解初值问题的欧拉方程
% 使用ydot.m计算微分方程右侧函数
% 输入：区间inter,初值y0，步数n
% 输出: 时间步t，解y
% trap([0 1],1,10)
function [t,y]=trap(inter,y0,n) 
t(1)=inter(1); y(1)=y0; 
h=(inter(2)-inter(1))/n; 
for i=1:n 
    t(i+1)=t(i)+h; 
    y(i+1)=trapstep(t(i),y(i),h); 
end
plot(t,y)

function y = trapstep(t,x,h)
% 单步梯形方法
z1=ydot(t,x);
g=x+h*z1;
z2=ydot(t+h,g);
y=x+h*(z1+z2)/2;

function z=ydot(t,y) 
z=-t/y;
