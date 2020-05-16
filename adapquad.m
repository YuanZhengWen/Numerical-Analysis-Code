% ����Ӧ����
% ���㶨���ֵĽ���
% ���룺����f������[a0,b0]
% �ݲ�tol
% ���:���ƶ�����
function int=adapquad(f,a0,b0,tol0) 
int=0; n=1; a(1)=a0; b(1)=b0; tol(1)=tol0; app(1)=trap(f,a,b); 
while n>0 % n�ǵ�ǰ�б������λ��
    c=(a(n)+b(n))/2; oldapp=app(n); app(n)=trap(f,a(n),c);app(n+1)=trap(f,c,b(n)); 
    if abs(oldapp-(app(n)+app(n+1)))<3*tol(n) 
        int=int+app(n)+app(n+1); % �ɹ�
        n=n-1;                   % ����������ɹ�
    else                         % �ֳ�����������
        b(n+1)=b(n); b(n)=c;     % ����������
        a(n+1)=c; tol(n)=tol(n)/2; tol(n+1)=tol(n);
        n=n+1;                   % ���б�β�ˣ�����
    end
end

function s=trap(f,a,b);
s=(f(a)+f(b))*(b-a)/2;
