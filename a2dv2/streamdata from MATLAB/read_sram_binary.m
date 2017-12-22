fileID = fopen('C:\Users\saurabhg\Desktop\binary_dump\file11.bin','r');
A = fread(fileID,'int16');
fclose(fileID);
B = reshape(A,16,[]);
B = B';
filter_converged_samples = A(33:size(A,1),:);
%%
C = reshape(B,256,256,16);

%%
% for (slice=1:16)
% figure;
% k = C(:,:,slice);
% k = k';
% imagesc(k);
% colorbar;
% caxis([min(filter_converged_samples),max(filter_converged_samples)]);
% caxis ([-6500,500]);
% title (sprintf('slice = %i',slice));
% end

%%
% slice=1;
% hist(reshape(C(:,:,slice),[256*256,1]),512)
% xlim([-500,500]);

%%

% summedresponse = sum(B,1);
% summedresponse = [summedresponse(16), summedresponse(1:15)];
% figure;
% title ('summed response');
% plot(summedresponse);

%% Principal component analysis PCA
[U,S,V]=svds(B);
%% PCA eigenvalues
% figure;
% plot(diag(S),'o');
% title ('eigenvalues');
% 
%% PCA eigenvectors
figure;
plot(V(:,1:3));
title ('eigenvectors');
legend({'comp1','comp2','comp3'});
% 
%% PCA projections
for (icomp = 1:6)
% icomp = 1;
figure;
Icomp = reshape(U(:,icomp),[256,256]);
imagesc(Icomp.');
caxis([-1,1]*0.02); colorbar;
title (sprintf('PCA projection for component = %i',icomp));
end

%% combinations
% Icomp = reshape(U(:,1)+U(:,2),[256,256]);
% imagesc(Icomp.')
% caxis([-1,1]*0.02)

%% To mark 2 different square shaped areas and get a lifetime average
% [x,y] = ginput(2); 
% pixels = 10;
% x = round (x);
% y = round (y);
% rectangle('Position',[x(1) y(1) pixels pixels],'EdgeColor','r');
% rectangle('Position',[x(2) y(2) pixels pixels],'EdgeColor','r');
% summed_area_1 = pixel_sum(x(1),y(1),pixels,B);
% summed_area_1 = summed_area_1./(pixels*pixels);
% summed_area_1 = [summed_area_1(16),summed_area_1(1:15)];  %To account for CIC differential delay
% summed_area_1 = summed_area_1./ min(summed_area_1); % Normalize data
% 
% summed_area_2 = pixel_sum(x(2),y(2),pixels,B);
% summed_area_2 = summed_area_2./(pixels*pixels);
% summed_area_2 = [summed_area_2(16),summed_area_2(1:15)];  %To account for CIC differential delay
% summed_area_2 = summed_area_2./ min(summed_area_2); % Normalize data

%% grab region from stack
% signal_roi = C(50:100,200:250,:);
% mean_signal_roi = squeeze(sum( sum( signal_roi, 1), 2));


%% Get an image based on lifetime fitting ; throw away the first point (start from peak response)
% brute forcing to continue the fitting on individual pixels when the model
% computes inf fit
% count = i;
% exp_fit_img(i) = 0;
% count = count +1;
% %
% 
% samples = 1:15;
% exp_fit_img = zeros (size(B,1),1);
% for i= 1:size(B,1)
%     temp_pixel = B(i,1:15);
%     temp_pixel = -temp_pixel;  %% Invert the PMT signal
%     temp_pixel = temp_pixel ./ max(temp_pixel); %% Normalize
%     fitresult = exp_fitting(samples, temp_pixel);
%     exp_fit_img(i) = 1/fitresult.b;  %% invert to get tau
% end
% 
% exp_fit_image = reshape(exp_fit_img,256,[]);
% figure;
% imagesc(exp_fit_image.');
% colorbar;
% title ('Exponential model fit per pixel');
