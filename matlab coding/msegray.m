clc;
clear all;
close all;

im0=imread(uigetfile('*.bmp;*.jpg;*.png;*.gif;*.jpeg','ENTER THE COVER(GRAY) IMAGE'));
im1=imread(uigetfile('*.bmp;*.jpg;*.png;*.gif;*.jpeg','ENTER THE STEGO(GRAY) IMAGE'));
imhist(im0)
imhist(im1)
cover=im0;
stego=im1;

im0=double(im0);
im1=double(im1);
[m n]=size(im1);
mse=sum(sum((im1-im0).^2))./(m.*n);
psnr=10*log10(65025/mse);   
disp('MSE');
disp(mse);
disp('PSNR');
disp(psnr);
