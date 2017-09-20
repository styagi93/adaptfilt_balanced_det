fileID = fopen('C:\Users\saurabhg\Desktop\binary_dump\loopback.bin','r');
A = fread(fileID,'int16');
fclose(fileID);
B = reshape(A,16,[]);
B = B';

%%
C = reshape(B,256,256,16);

%%
slice=4;
k = C(:,:,slice);
k = k';
imagesc(k);
colorbar;
caxis([-32768,32767]);
title (sprintf('slice = %i',slice));