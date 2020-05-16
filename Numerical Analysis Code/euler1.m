% ����ֵ�����ŷ������
% ʹ��ydot.m����΢�ַ����Ҳຯ��
% ���룺����inter,��ֵy0������n
% ���: ʱ�䲽t����y
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
% ����:x,��ǰֵy,����h
% ���:��x+h�Ľ��ƽ�
y=y+h*ydot(x,y);

function z=ydot(x,y) 
z=-x/y;

