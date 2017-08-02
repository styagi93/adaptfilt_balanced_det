%% stream signal tap data in matlab
setenv('path', ['C:\altera_lite\16.0\quartus\bin64;' getenv('path')]);
addpath 'C:\altera_lite\16.0\quartus\bin64';
alt_signaltap_run('VERBOSE_ON')
% while(1)
% for (k=1:30)
tic;
data = alt_signaltap_run ('C:\Users\saurabhg\Desktop\fpga-spreadspectrum-adaptivefilt\a2dv2\stp3.stp', 'signed', 'CIC output only' );
toc;
pause (2);
coeff = [];
for (i=1:(size(data,1)))
    if (data(i,1))
        if (data(i,2) >= 0)
        coeff(data(i,2)+1,1) = data(i,3) ;
        else
        coeff(data(i,2)+17,1) = data(i,3) ;
        end
        
    end
end
coeff_hist(k,:) = coeff;
% end
plot (coeff);
% end

%%alt_signaltap_run('END_CONNECTION');