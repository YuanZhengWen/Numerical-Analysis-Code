function y0=polyinterp(x,y,x0)
n=length(x);
c=newtdd(x,y,n);
d=length(x)-1;
y0=nest(d,c,x0,x);