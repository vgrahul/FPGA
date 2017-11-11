function txt= txtxtract(im)
% This funcion extract the text data from the encoded color image's LSB 
% im - Encoded color image which have the information of six text images
% txt - Create a matrix which have the information about text data

txt=zeros(size(im,1),size(im,2));
for i=1:size(im,1)
    for j=1:size(im,2)
        if (bitand(im(i,j),1)==1) % Check the LSB of color image as bit 1
            txt(i,j)=255; % Set gray value as 255 (white)
        else
            txt(i,j)=0; % Set gray value as 0 (black)
        end
    end
end 