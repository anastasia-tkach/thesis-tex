clc, clear, close all;
I = imread('frame_173_dtform.png');
I = double( rgb2gray(I) );


h = fspecial('gaussian'); 
I = imfilter(I,h);

% load colormap.mat C
C = hot(2000);
imagesc(I)
colormap(C)
caxis([0,70])
imwrite(I,'frame_173_dtform_remap.png');
axis off
axis image

% figure(2)
% pcolor(I);
% shading interp;