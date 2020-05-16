function errorplot(a,b)
f=@(x)x/sqrt(x^2+9);
for j=1:9
h=(b-a)/(2^(j-1));
for i=1:2^(j-1)+1
    y(i)=f(a+h*(i-1));
end
y_sum=sum(y(2:end-1));
yc(j)=(h/2)*(y(1)+y(end)+2*y_sum);
syms x
y=x/sqrt(x^2+9);
e(j)=vpa(abs(int(y,0,4)-yc(j)),4);
end
loglog(h,e,'-')