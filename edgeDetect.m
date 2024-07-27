function [x,y] = edgeDetect(imageInfo, threshold)
 

%adds border of zeros around imageInfo
imageWBorder = (ones(size(imageInfo,1)+2, size(imageInfo,2)+2))*inf;
imageWBorder(2:size(imageWBorder,1)-1,2:size(imageWBorder,2)-1) = imageInfo;

%initializes the output vectors
x = [];
y = [];

%iterates through every index in imageInfo and checks if its value is above
%the threshold. If it is, iterates through every surrounding index and
%checks if at least one is less than the threshold. If it is, then the
%indices i and j are added to the output vectors. 
for i = 1:size(imageInfo,1)
    for j = 1:size(imageInfo,2)
        if(imageInfo(i,j)>=threshold)
            if(imageWBorder(i,j)<threshold)
                x(end+1) = i;
                y(end+1) = j;
            elseif(imageWBorder(i+1,j)<threshold)
                x(end+1) = i;
                y(end+1) = j;
            elseif(imageWBorder(i+2,j)<threshold)
                x(end+1) = i;
                y(end+1) = j;
            elseif(imageWBorder(i,j+1)<threshold)
                x(end+1) = i;
                y(end+1) = j;
            elseif(imageWBorder(i+2,j+1)<threshold)
                x(end+1) = i;
                y(end+1) = j;
            elseif(imageWBorder(i,j+2)<threshold)
                x(end+1) = i;
                y(end+1) = j;
            elseif(imageWBorder(i+1,j+2)<threshold)
                x(end+1) = i;
                y(end+1) = j;
            elseif(imageWBorder(i+2,j+2)<threshold)
                x(end+1) = i;
                y(end+1) = j;
            end
        end
    end
end
