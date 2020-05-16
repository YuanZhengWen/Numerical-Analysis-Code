% ����ֵ�����ŷ������
% ʹ��ydot.m����΢�ַ����Ҳຯ��
% ���룺����inter,��ֵy0������n
% ���: ʱ�䲽t����y
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
% �������η���
z1=ydot(t,x);
g=x+h*z1;
z2=ydot(t+h,g);
y=x+h*(z1+z2)/2;

function z=ydot(t,y) 
z=-t/y;
