clc;
close all;
clear all;

image =imread('benchmark/pool.png');
image =rgb2gray(image);
[width,height] =size(image);
threshold=100
for i=1: width
    for j=1:height
        if image(i,j) > threshold
            image(i,j) =255;
        else
            image(i,j)=0;
        end
    end
end
imshow (image);
        