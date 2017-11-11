function alt=alterim(i1,i2)
% This function select the pixels alternatively from text image 1 & 2 and stored 
% it in 'alt'  text image respectively
% i1 - Text image 1 to be encoded
% i2 - Text image 2 to be encoded
%alt - Resulted encoded text image which have the pixel of i1 & i2 alternatively

for x=1:size(i1,1)
    for y=1:size(i1,2)
        if(mod((x+y),2)==0) %Selction of pixels from text images i1 & i2
            alt(x,y,:)=i1(x,y,:);  %Pixel taken from text image i1
        else
            alt(x,y,:)=i2(x,y,:); %Pixel taken from text image i2
        end
    end
end