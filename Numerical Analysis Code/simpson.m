%% 5-2-2
function yc=simpson(f,a,b,m)
h=(b-a)/(2*m);
for i=1:2*m+1
    y(i)=f(a+h*(i-1));
end
y1=sum(y(2:2:end-1));
y2=sum(y(3:2:end-2));
yc=(h/3)*(y(1)+y(end)+2*y2+4*y1);