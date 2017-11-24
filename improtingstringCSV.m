fid = fopen('D:\BIU IMBA\MATLAB\sp500.csv');  //open file
data = fread(fid, '*char')'; //read all contents into data as a char array (don't forget the `'` to make it a row rather than a column).
fclose(fid);
entries = regexp(data, ',', 'split'); //This will return a cell array with the individual entries for each string you have between the commas.