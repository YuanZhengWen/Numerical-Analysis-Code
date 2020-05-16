function [y,error]=rk2(inter,y0,n) 
x(1)=inter(1); y(1)=y0; 
h=(inter(2)-inter(1))/n; 
for i=1:n 
    x(i+1)=x(i)+h; 
    y(i+1)=rk2step(x(i),y(i),h); 
    end
plot(x,y)

function y=rk2step(t,w,h)
% Áú¸ñ-¿âËþ2½×·½·¨
x=w+h/2*ydot(t,w);
y=w+h*ydot(t+h/2,x);

function z=ydot(t,y)
z=2*(t+1)*y;