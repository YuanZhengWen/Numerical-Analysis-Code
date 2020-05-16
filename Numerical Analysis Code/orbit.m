% 单体问题的程序
% 输入:时间区间inter，初始条件
% ic=[x0 vx0 y0 vy0],x位置,x速度,y位置,y速度
% 步数n,每个画出点p的步数
% 调用单步方法trapstep.m
% orbit([0 100],[0 1 2 0],10000,5)
function z=orbit(inter,ic,n,p)
h=(inter(2)-inter(1))/n;
x0=ic(1);vx0=ic(2);y0=ic(3);vy0=ic(4); % 初始条件
y(1,:)=[x0 vx0 y0 vy0];t(1)=inter(1);   % 生成y向量
set(gca,'XLim',[-5 5],'YLim',[-5 5],...
    'XTick',[-5 0 5],'YTick',[-5 0 5]);
sun=animatedline('color','y','Marker','.','markersize',50);
addpoints(sun,0,0)
head=animatedline('color','r','Marker','.','markersize',35);
tail=animatedline('color','b','LineStyle','-');
% [px,py]=ginput(1)   % 包含三条线
% [px1,py1]=ginput(1) % 支持鼠标
% y(1,:)=[px px1-px py py1-py] % 2次点击定义方向
for k=1:n/p
    for i=1:p
        t(i+1)=t(i)+h;
        y(i+1,:)=eulerstep(t(i),y(i,:),h);
    end
    y(1,:)=y(p+1,:);t(1)=t(p+1);
    clearpoints(head);addpoints(head,y(1,1),y(1,3))
  addpoints(tail,y(1,1),y(1,3))
  drawnow;
end

function y=eulerstep(t,y,h)
% 单步欧拉方法
% 输入：时间t。向量y，步长h
% 输出：在时间t+h的近似解向量
y=y+h*ydot(t,y);

function z=ydot(t,x)
m2=3;g=1;mg2=m2*g;px2=0;py2=0;
px1=x(1);py1=x(3);vx1=x(2);vy1=x(4);
dist=sqrt((px2-px1)^2+(py2-py1)^2);
z=zeros(1,4);
z(1)=vx1;
z(2)=(mg2*(px2-px1))/(dist^3);
z(3)=vy1;
z(4)=(mg2*(py2-py1))/(dist^3);


