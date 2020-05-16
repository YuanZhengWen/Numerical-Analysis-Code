% 欧拉方法矢量版
% 输入:区间inter,初始向量y0,步数n
% 输出:时间步t,解y
% euler2([0 1],[0 1],10)
function [t,y]=euler2(inter,y0,n)
t(1)=inter(1); y(1,:)=y0;
h=(inter(2)-inter(1))/n;
for i=1:n
    t(i+1)=t(i)+h;
    y(i+1,:)=eulerstep(t(i),y(i,:),h);
end
plot(t,y(:,1),'o-',t,y(:,2),'o-');

function y=eulerstep(t,y,h)
% 单步欧拉方法
% 输入：时间t。向量y，步长h
% 输出：在时间t+h的近似解向量
y=y+h*ydot(t,y);

function z=ydot(t,y)
z(1)=y(2)^2-2*y(1);
z(2)=y(1)-y(2)-t*y(2)^2;



