% ʹ�ñ��������������ɿ��Ƴ���
% ��ͼ�δ��ڵ����õ�һ����
% �ٵ�����εõ��������Ƶ��һ��������
% ÿ��3�ε���õ����㣬���������Ӹ����
% ���»س�����ֹ����
function bezierdraw
plot([-1 1],[0 0],'k',[0 0],[-1 1],'k');
grid on
hold on;
t=0:.02:1;
[x,y]=ginput(1); %����һ�������
while (0==0)
    [xnew,ynew]=ginput(3); %�������ε��
    if length(xnew)<3
        break              %���»س�����ֹ
    end
    x=[x;xnew];y=[y;ynew]; %����������Ϳ��Ƶ�
    plot([x(1) x(2)],[y(1) y(2)],'r:',x(2),y(2),'rs');
    plot([x(3) x(4)],[y(3) y(4)],'r:',x(3),y(3),'rs');
    plot(x(1),y(1),'bo',x(4),y(4),'bo');
    bx=3*(x(2)-x(1));by=3*(y(2)-y(1)); %��������
    cx=3*(x(3)-x(2))-bx;cy=3*(y(3)-y(2))-by;
    dx=x(4)-x(1)-bx-cx;dy=y(4)-y(1)-by-cy;
    xp=x(1)+t.*(bx+t.*(cx+t*dx));    %���ɷ���
    yp=y(1)+t.*(by+t.*(cy+t*dy));
    plot(xp,yp);
    x=x(4);y=y(4);
end 
hold off
    
    