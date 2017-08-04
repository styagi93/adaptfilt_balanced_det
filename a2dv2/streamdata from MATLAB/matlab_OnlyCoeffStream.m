%% stream signal tap data in matlab
setenv('path', ['C:\altera_lite\16.0\quartus\bin64;' getenv('path')]);
addpath 'C:\altera_lite\16.0\quartus\bin64';
alt_signaltap_run('VERBOSE_ON')
while(1)
tic;
data = alt_signaltap_run ('C:\Users\saurabhg\Desktop\fpga-spreadspectrum-adaptivefilt\a2dv2\stp3.stp', 'signed', 'only_coefficients' );
toc;

b = [mean(data(:,1)),mean(data(:,2)),mean(data(:,3)),mean(data(:,4)),mean(data(:,5)),mean(data(:,6)),mean(data(:,7)),mean(data(:,8)),mean(data(:,9)),mean(data(:,10)),mean(data(:,11)),mean(data(:,12)),mean(data(:,13)),mean(data(:,14)),mean(data(:,15)),mean(data(:,16))];

plot (b);
pause (2);
end

%%alt_signaltap_run('END_CONNECTION');