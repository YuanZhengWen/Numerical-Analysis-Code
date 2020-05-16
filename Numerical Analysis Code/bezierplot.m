function bezierplot(x,y)
%样条方程
bx=3*(x(2)-x(1));by=3*(y(2)-y(1)); 
cx=3*(x(3)-x(2))-bx;cy=3*(y(3)-y(2))-by;
dx=x(4)-x(1)-bx-cx;dy=y(4)-y(1)-by-cy;
%霍纳方法
t=0:.02:1;
xp=x(1)+t.*(bx+t.*(cx+t*dx));  
yp=y(1)+t.*(by+t.*(cy+t*dy));
plot(xp,yp);