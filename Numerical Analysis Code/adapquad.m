% 自适应积分
% 计算定积分的近似
% 输入：函数f，区间[a0,b0]
% 容差tol
% 输出:近似定积分
function int=adapquad(f,a0,b0,tol0) 
int=0; n=1; a(1)=a0; b(1)=b0; tol(1)=tol0; app(1)=trap(f,a,b); 
while n>0 % n是当前列表结束的位置
    c=(a(n)+b(n))/2; oldapp=app(n); app(n)=trap(f,a(n),c);app(n+1)=trap(f,c,b(n)); 
    if abs(oldapp-(app(n)+app(n+1)))<3*tol(n) 
        int=int+app(n)+app(n+1); % 成功
        n=n-1;                   % 该区间操作成功
    else                         % 分成两个子区间
        b(n+1)=b(n); b(n)=c;     % 设置新区间
        a(n+1)=c; tol(n)=tol(n)/2; tol(n+1)=tol(n);
        n=n+1;                   % 到列表尾端，结束
    end
end

function s=trap(f,a,b);
s=(f(a)+f(b))*(b-a)/2;
