function hide= imhide(org,text)
% This function set the LSB bit of color image as '1' or '0' based on the 
% information available in Text image
% org  - Original color image taken which is used to hide the text data
% text - Text image which have the information of two text images in it's altermnate pixel
% hide - Encoded image which have the text data in it's LSB 

hide=zeros(size(org,1),size(org,2));
for i=1:size(org,1)
    for j=1:size(org,2)
        if text(i,j)<=128 % Check the pixels gray value <= 128
            hide(i,j)=bitset(org(i,j),1,0); %Set LSB(1 st bit) bit as '0'
        else
            hide(i,j)=bitset(org(i,j),1); %Set LSB(1 st bit) bit as '1'
        end
    end
end

