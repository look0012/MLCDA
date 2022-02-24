% clc; 
% clear; 
%data = W(1:500,7:10);
%data = H(2:5,1:200);
%A = ones(20,20);
%data = A;
%data = rand(8,8);
%data = Gaussian_Dis(1:20,20:35);
%  xvalues = {'CNC1','CNC2','CNC3','CNC4','CNC5','CNC6','CNC7','CNC8'}; 
% yvalues = {'CNC1','CNC2','CNC3','CNC4','CNC5','CNC6','CNC7','CNC8'}; 
% yvalues=yvalues';
%h=HeatMap(data,'Colormap',redbluecmap,'ColumnLabels',yvalues,'RowLabels',xvalues);

h=HeatMap(flipud(data),'Colormap',redbluecmap);

