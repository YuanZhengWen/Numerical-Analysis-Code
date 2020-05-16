function [x,SE,RMSE]=leastsquare(A,b)
x=(A'*A)\(A'*b);
r=b-A*x;
SE=(sum(r.^2));
RMSE=sqrt(SE/length(A));

