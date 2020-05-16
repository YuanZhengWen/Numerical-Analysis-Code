function y=rk4(inter,y0,n) 
x(1)=inter(1); y(1)=y0;  
h=(inter(2)-inter(1))/n;
for i=1:n 
    x(i+1)=x(i)+h; 
    y(i+1)=rk4step(x(i),y(i),h); 
end
plot(x,y)
function y=rk4step(t,w,h)
% Áú¸ñ-¿âËþ4½×·½·¨
s1=ydot(t,w);
s2=ydot(t+h/2,w+h*s1/2);
s3=ydot(t+h/2,w+h*s2/2);
s4=ydot(t+h,w+h*s3);
y=w+h*(s1+2*s2+2*s3+s4)/6;

function z=ydot(t,y)
z=sinh(y);