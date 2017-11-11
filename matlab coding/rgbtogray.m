im0=imread(uigetfile('*.bmp;*.jpg;*.png;*.gif;*.jpeg','ENTER THE COVER(COLOUR) IMAGE'));
im1=imread(uigetfile('*.bmp;*.jpg;*.png;*.gif;*.jpeg','ENTER THE STEGO(COLOUR) IMAGE'));
im0=rgb2gray(im0);
imshow(im0);