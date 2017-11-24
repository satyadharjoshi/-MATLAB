tsobj = fints(dates, data)


temp1 = raw(:,1)

raw(2:end-1,2) 

tsobj = fints(datenum(raw(2:end-1,1)) ,raw(2:end-1,2) )
datesraw=raw(2:end-1,1)
dates=datenum(datesraw)
price=raw(2:end-1,2)
price =cell2mat(price)
tsobj = fints(dates ),price )
tsmat = fts2mat(tsobj)

xb=regress(amzr,spr)
 stats = regstats(amzr,spr);
 
 
 [b,bint,r,rint,stats] = regress(amzr,spr)

 plotregression(t,y)

 plotregression(spr,amzr)

 % Saving all the variables
 
 save('regressionv1variables')
 
 % Commenting 
 a = [1 2 3 4 5 6]
reshape (a, 2, 3)
% Breaking into equal parts

size = size(amzr)/3
 amzrmatrix = reshape( amzr ,size(1,1) ,3)
 amzrmatrix1 = amzrmatrix (:,1)

 sprmatrix = reshape( spr ,size(1,1) ,3)
 sprmatrix1 = sprmatrix (:,1)
 
 slope1=regress(amzrmatrix1,sprmatrix1)
 
 size = size(amzr)/3
 sprmatrix = reshape( spr ,size(1,1) ,3)

 
 % Importance of cell arrays
M = sprmatrix;            % create a 4x4 random example matrix
C = num2cell(M,1);      % convert every column to a cell
[a,b,c] = deal(C{:}); % assign to variables a...d
 
 C = cell(size,1,3)
 
   for i = 1:3 
   sprmatrix = sprmatrix (:,i)   
   end 

 % example from matlab website
 x = ones(1,10);
for n = 2:6
    x(n) = 2 * x(n - 1);
end

% Importance of cell arrays
M = rand(4);            % create a 4x4 random example matrix
C = num2cell(M,1);      % convert every column to a cell
[a,b,c,d] = deal(C{:}); % assign to variables a...d
 