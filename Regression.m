% http://www.mathworks.com/help/stats/regress.html
%load carsmall

A1 = xlsread('regressionv2.xlsx');
x1= A1(:,2);
x2= A1(:,3);
X = [ones(size(x1)) A1(:,2) A1(:,3)];
y = [A1(:,1)];

b = regress(y,X)    % Removes NaN data

scatter3(x1,x2,y,'filled')
hold on
x1fit = min(x1):100:max(x1);
x2fit = min(x2):10:max(x2);
[X1FIT,X2FIT] = meshgrid(x1fit,x2fit);
YFIT = b(1) + b(2)*X1FIT + b(3)*X2FIT;
mesh(X1FIT,X2FIT,YFIT)
xlabel('tip-end')
ylabel('end-base')
zlabel('ordered')
view(50,10)
