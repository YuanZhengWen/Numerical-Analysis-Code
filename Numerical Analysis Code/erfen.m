function[k,x,error,yx]=erfen(a,b,abtol)
a(1)=a;b(1)=b;
ya=fun(a(1));yb=fun(b(1));
if ya*yb>0
    disp('注意调整端点a与b')
end
max=-1+ceil((log(b-a)-log(abtol))/log(2));
for k=1:max+1;
    a;ya=fun(a);
    b;yb=fun(b);x=(a+b)/2;
    yx=fun(x);error=abs(a-b)/2;k=k-1;
    if yx==0
        a=x;b=x;
    else if yb*ya>0
            b=x;yb=yx;
        else
            a=x;ya=yx;
        end
        if b-a<abtol
        end
    end
end
k=max;error;yx=fun(x);
format long
x