x = randn(10000,1);
h = hist(x)


x = randn(1000,1);
nbins = 25;
h = hist(x,nbins)
hist(x,nbins)

A1 = xlsread('tip-end.xlsx')
A2= dataset('xlsfile','tip-end.xlsx');

hist (A1(:,2),10)

X= A1(:,2)
p = prctile(X, [1 99]);
X(X <= p(1)) = [];
X(X >= p(2)) = [];

hist (X,10)
