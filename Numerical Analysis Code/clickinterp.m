%����ʽ��ֵ����
%���MATLABͼ�δ��ڶ�λ
%�������������ĵ�
%��return��������
function clickinterp
xl=-3;xr=3;yb=-3;yt=3;
plot([xl xr],[0 0],'k',[0 0],[yb yt],'k');
grid on;
xlist=[];ylist=[];
k=0;
while (0==0)
    [xnew,ynew]=ginput(1);  %��ȡ�����
    if length(xnew)<1
        break                %����return������ֹ
    end
    k=k+1;                   %k������
    xlist(k)=xnew;ylist(k)=ynew;%���б�����µ�
    c=newtdd(xlist,ylist,k);    %�õ���ֵϵ��
    x=xl:.01:xr;                %�������ߵ�x����
    y=nest(k-1,c,x,xlist);      %�������ߵ�y����
    plot(xlist,ylist,'o',x,y,[xl xr],[0 0],'k',[0 0],[yb yt],'k');
    axis([xl xr yb yt]);grid on;
end
    
    