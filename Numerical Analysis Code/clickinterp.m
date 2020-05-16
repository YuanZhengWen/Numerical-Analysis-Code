%多项式插值程序
%点击MATLAB图形窗口定位
%继续，加入更多的点
%按return结束程序
function clickinterp
xl=-3;xr=3;yb=-3;yt=3;
plot([xl xr],[0 0],'k',[0 0],[yb yt],'k');
grid on;
xlist=[];ylist=[];
k=0;
while (0==0)
    [xnew,ynew]=ginput(1);  %获取鼠标点击
    if length(xnew)<1
        break                %按下return键，终止
    end
    k=k+1;                   %k计数器
    xlist(k)=xnew;ylist(k)=ynew;%在列表加入新点
    c=newtdd(xlist,ylist,k);    %得到插值系数
    x=xl:.01:xr;                %定义曲线的x坐标
    y=nest(k-1,c,x,xlist);      %定义曲线的y坐标
    plot(xlist,ylist,'o',x,y,[xl xr],[0 0],'k',[0 0],[yb yt],'k');
    axis([xl xr yb yt]);grid on;
end
    
    