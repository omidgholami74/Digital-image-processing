clc;
close all;
clear all;

image =imread('airplane.png');
subplot(1,2,1)
imshow(image);
title('original')
image =rgb2gray(image);
[width,height] =size(image);
threshold_number=100;
for i=1: width
    for j=1:height
        if image(i,j) > threshold_number
            image(i,j) =255;
        else
            image(i,j)=0;
        end
    end
end
subplot(1,2,2)
imshow(image);
title('threshold')