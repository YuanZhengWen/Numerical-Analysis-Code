% Program 2.3 Broyden's Method II
% Input: x0 initial vector, k = max steps
% Output: solution x
% Example usage: broyden2(f,[1;2],10)
function x=broyden2(f,x0,k)
[n,m]=size(x0);
b=eye(n,n);           % initial b
for i=1:k
  x=x0-b*f(x0);
  del=x-x0;delta=f(x)-f(x0);
  b=b+(del-b*delta)*del'*b/(del'*b*delta);
  x0=x;
end

