% bounce.m
% Illustrates Matlab animation using the drawnow command
% Usage: Save this file as bounce.m, then type "bounce"
set(gca,'XLim',[0 1],'YLim',[0 1]);
cla
axis square
ball = animatedline('color','r','Marker','o','MarkerSize',12,...
     'MarkerFaceColor','r');
hx0=.05;hy0=.05/sqrt(2);hx=hx0;hy=hy0;
xl=.02;xr=.98;yb=xl;yt=xr;x=.1;y=.1;
while 1 == 1
    if x < xl
        hx= hx0;
    end
    if x > xr
        hx = -hx0;
    end
    if y < yb
        hy = hy0;
    end
    if y > yt
        hy = -hy0;
    end
    x=x+hx;y=y+hy;
    clearpoints(ball);addpoints(ball,x,y);
    drawnow;pause(0.01)
end
