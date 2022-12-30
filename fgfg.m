clc;
close all;
clear all;

image=imread('benchmark/airplane.png');

image = rgb2gray(image);
[width,height]= size(image);
for i = 1 : width
    for j = 1 : height
        image(i, j) = 255 - image(i, j);
    end
end
imshow(image)