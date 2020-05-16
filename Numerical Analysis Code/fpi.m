% 迭代法求根
function xc=fpi(f,x0,k,tol)
x(1)=x0;
for i=1:k
    x(i+1)=f(x(i));
    if abs(x(i+1)-x(1))<tol
        break;
    end
end
xc=x(k+1);
