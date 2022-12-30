clc;
close all;
clear all;

image=imread('benchmark/airplane.png');

image = rgb2gray(image);
[width,height]= size(image);
tavan=1.2;
for i = 1 : width
    for j = 1 : height
        image(i,j);
        image(i, j) = double(image(i,j))^tavan;
        image(i,j);
     
    end
end
imshow(image)