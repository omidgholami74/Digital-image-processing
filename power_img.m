clc;
close all;
clear all;

image=imread('airplane.png');
subplot(1,2,1)
imshow(image);
title('original')
image = rgb2gray(image);
[width,height]= size(image);
tavan=1.2;
for i = 1 : width
    for j = 1 : height
        image(i, j) = double(image(i,j))^tavan;
    end
end
subplot(1,2,2)
imshow(image);
title('Power')