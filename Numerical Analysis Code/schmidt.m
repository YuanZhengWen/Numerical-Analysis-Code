function b=schmidt(A)
[m,n]=size(A);
if m<n
    error('行小于列，无法计算');
    return;
end
y=zeros(m,n)
for j=1:n
    y(:,j)=A(:,j);
    
    
    

