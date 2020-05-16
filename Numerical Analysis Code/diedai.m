function[k,piancha,xdpiancha,xk]=diedai(x0,k)
x(1)=x0;
for i=1:k
    x(i+1)=fun(x(i));
    piancha=abs(x(i+1)-x(i));
    xdpiancha=piancha/(abs(x(i+1))+eps);
    i=i+1;xk=x(i);
    [(i-1) piancha xdpiancha xk];
end
if (piancha>1)&&(xdpiancha>0.5)&&(k>3)
    disp('此迭代序列发散');
    return;
end
if (piancha<0.001)&&(xdpiancha<0.0000005)&&(k>3)
    disp('此迭代序列收敛');
    return;
end
p=[(i-1) piancha xdpiancha xk]'