clc;
clear all;

% converting the file system format to the fts format

myinc = ascii2fts('BB.dat');


% now we use bollinger command that only works on fts objects

[input_Mid,input_Uppr,input_Lowr]= bollinger(myinc);

LBfts=input_Lowr;
UBfts=input_Uppr;
MBfts=input_Mid;

% all othe above are in FTS object but to compare them we need to convert
% them in matrix format

lbm = fts2mat(LBfts)
ubm = fts2mat(UBfts)
mbm = fts2mat (MBfts)
org=fts2mat(myinc);

% now all FTS objects are into matrix format which we can loop around

[rows columns] = size(lbm);

% count the rows and columns

for a = 1:rows
    
    % logic use the matrix and not the FTS objects
    % storing everything into a matrix called output - equilvanet to F
    % column in excel
    % a,1 is used to store it vertically
    
if (ubm(a)>lbm(a)&& lbm(a)>org(a))
    output{a,1}=('PriceLiesBetweenUbandMb');
  else if (org(a)>ubm(a))
     output{a,1}=('PriceExceededUb');
    else if (lbm(a)>ubm(a)&& lbm(a)<ubm(a))
             output{a,1}=('PriceLiesBetweenLbandMb');
     
        end
      end
end
end
;

filename = 'testdata.xlsx';
xlswrite(filename,output)

        


