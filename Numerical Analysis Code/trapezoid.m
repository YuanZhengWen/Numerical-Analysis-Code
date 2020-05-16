%% 5-2-1
function yc=trapezoid(f,a,b,m)
h=(b-a)/m;
for i=1:m+1
    y(i)=f(a+h*(i-1));
end
y_sum=sum(y(2:end-1));
yc=(h/2)*(y(1)+y(end)+2*y_sum);
syms x
y=sin(x)/x;
e=vpa(abs(int(y,pi/4,pi/2)-yc),4)
    


