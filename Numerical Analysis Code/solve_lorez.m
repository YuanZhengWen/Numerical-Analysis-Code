function [x,y,z]=solve_lorez(inter,ic,n,p)
h=(inter(2)-inter(1))/n;
x0=ic(1);y0=ic(2);z0=ic(3); % 初始条件
y(1,:)=[x0 y0 z0];t(1)=inter(1);   % 生成y向量
set(gca,'XLim',[-5 5],'YLim',[-5 5],...
    'XTick',[-5 0 5],'YTick',[-5 0 5]);
head=animatedline('color','r','Marker','.','markersize',35);
tail=animatedline('color','b','LineStyle','-');
for k=1:n/p
    for i=1:p
        t(i+1)=t(i)+h;
        y(i+1,:)=rk4step(t(i),y(i,:),h);
    end
    y(1,:)=y(p+1,:);t(1)=t(p+1);
    clearpoints(head);addpoints(head,y(1,1),y(1,3))
  addpoints(tail,y(1,1),y(1,3))
  drawnow;
end

function y=rk4step(t,w,h)
% 龙格-库塔4阶方法
s1=ydot(t,w);
s2=ydot(t+h/2,w+h*s1/2);
s3=ydot(t+h/2,w+h*s2/2);
s4=ydot(t+h/2,w+h*s3)
y=w+h*(s1+2*s2+2*s3+s4)/6;

function z=ydot(t,y)
% Lorenz方程
s=10;r=28;b=8/3;
z(1)=-s*y(1)+s*y(2);
z(2)=-y(1)*y(3)+r*y(1)-y(2)
z(3)=y(1)*y(2)-b*y(3);