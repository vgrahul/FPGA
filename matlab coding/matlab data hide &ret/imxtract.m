function [tx1 tx2]= imxtract(diim)
% This function extract the text content from 'diim' matrix created by us
% diim - Text matrix which have the value '0'(Black) or '255'(White)
% tx1  -  Extracted text image 1 from diim (Even location of x+y)
% tx2  -  Extracted text image 2 from diim (Odd location of x+y)

tx1=zeros(size(diim,1),size(diim,2));
tx2=zeros(size(diim,1),size(diim,2));
for x=1:size(diim,1)
    for y=1:size(diim,2)

        % Extract the image for text image 1       
        if(mod((x+y),2)==0)      % Select the pixels in alternate manner
            tx1(x,y,:)=diim(x,y,:); % Select the pixel from 'even' location of (x+y)
        elseif(x~=size(diim,1) && y~=size(diim,1)) % Check whether the index of matrix exceeds the size
            tx1(x,y,:)=diim(x+1,y,:);  % Select the pixel from next (x+y+1 th) location of (x+y)
        end

        % Extract the image for text image 2
        if(x~=size(diim,1) && y~=size(diim,2) && (mod((x+y),2)==0))
            tx2(x,y,:)=diim(x+1,y,:);
        else 
            tx2(x,y,:)=diim(x,y,:);
        end

    end
end
