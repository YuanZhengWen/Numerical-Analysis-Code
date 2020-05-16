%% Problem 4.2-7
data=importdata('F:\MATLAB\Matlab Numeric Computing\matlab\03_Matlab Code\windmill.txt');%import data
for i=1:5
    b(i)=sum(data(i*(1:12)))/12;
end
A=zeros(5,4);
for t=1:5
    for i=1:5
    A(t,:)=[1 cos(2*pi*i) sin(2*pi*i) cos(4*pi*t)];
    end
end
b=b';
[x,SE,RMSE]=leastsquare(A,b)
