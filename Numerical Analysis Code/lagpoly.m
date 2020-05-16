function [C,L,L1,l]=lagpoly(x,y)
m=length(x);L=ones(m,m);
for k=1:m
    v=1;
    for i=1:m
        if k~=i
            v=conv(v,poly(x(i)))/(x(k)-x(i));
        end
    end
    L1(k,:)=v;l(k,:)=poly2sym(v);
end
C=y*L1;L=Y*l;
            