function b=schmidt(A)
[m,n]=size(A);
if m<n
    error('��С���У��޷�����');
    return;
end
y=zeros(m,n)
for j=1:n
    y(:,j)=A(:,j);
    
    
    

