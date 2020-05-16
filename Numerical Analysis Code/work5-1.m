%% 5-1-1
for j=1:12
        h(j)=10^(-j);
        x=0;
        f=@(x)(sin(x)-cos(x));
        y=cos(x)+sin(x);
        dif(j)=vpa((f(x+h(j))-f(x))/h(j),12);
        error(j)=y-dif(j);
end
%% 5-1-2
for j=1:12
        h(j)=10^(-j);
        x=1;
        f=@(x)(1+x)^(-1);
        y=-1/(1+x)^2;
        dif(j)=vpa((f(x+h(j))-f(x-h(j)))/(2*h(j)),12);
        error(j)=y-dif(j);
end