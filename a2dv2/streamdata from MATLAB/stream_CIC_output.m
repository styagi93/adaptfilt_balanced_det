%% stream signal tap data in matlab
setenv('path', ['C:\altera_lite\16.0\quartus\bin64;' getenv('path')]);
addpath 'C:\altera_lite\16.0\quartus\bin64';
alt_signaltap_run('VERBOSE_ON')
while(1)
tic;
data = alt_signaltap_run ('C:\Users\saurabhg\Desktop\fpga-spreadspectrum-adaptivefilt\a2dv2\stp3.stp', 'signed', 'CIC output only' );
toc;
for (i=1:1024)
    if (data(i,1))
       b_coeff(:) = data(i,:) 
    end
end
drawnow;
end

%%alt_signaltap_run('END_CONNECTION');