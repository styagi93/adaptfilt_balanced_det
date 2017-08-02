%% stream signal tap data in matlab
setenv('path', ['C:\altera_lite\16.0\quartus\bin64;' getenv('path')]);
addpath 'C:\altera_lite\16.0\quartus\bin64';
alt_signaltap_run('VERBOSE_ON')
% while(1)
% for i = (1:20) 
tic;
data = alt_signaltap_run ('C:\Users\saurabhg\Desktop\fpga-spreadspectrum-adaptivefilt\a2dv2\stp3.stp', 'signed', 'filter readout' );
toc;
pause (2);
Y = ((data(:,3) .* 2^11) + data(:,4))/2^10;
d= double (data(:,2));
std_dev_desired = std(d);
E = ((data(:,5) .* 2) + data(:,6));
b = [mean(data(:,7)),mean(data(:,8)),mean(data(:,9)),mean(data(:,10)),mean(data(:,11)),mean(data(:,12)),mean(data(:,13)),mean(data(:,14)),mean(data(:,15)),mean(data(:,16)),mean(data(:,17)),mean(data(:,18)),mean(data(:,19)),mean(data(:,20)),mean(data(:,21)),mean(data(:,22))];
% bb(i,:) = b;
% end
%% correcting for ADC offset; rescaling
% b=b/max(b);
% b=b-b(16);
% b=b/2^10;
%% plotting
subplot(3,1,1);plot (1:1024,data(:,2),1:1024,Y);legend('desired output','adaptive filter output'); title(sprintf('Output comparison; std-dev-desired = %f',std_dev_desired));xlabel('sample number'); ylabel('amplitude');%axis ([1 1024 -1500 1500]);
subplot(3,1,2);plot (1:1024,E);title(sprintf('Error vs sample; mean error = %f ; std dev = %f',mean(E),std(double(E))));xlabel('sample');ylabel('error');%axis ([1 1024 -1000 1000]);
subplot(3,1,3);stem(b);title('Coefficients');ylabel('normalized response');xlabel('coefficient');
% axis ([0 16 -1 1]);
%drawnow;
% stem (b);
% end

%%alt_signaltap_run('END_CONNECTION');