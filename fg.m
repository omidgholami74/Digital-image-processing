clc;
close all;
clear all;

image=imread("benchmark/mountain.png");
for j=1:640 %arze tasvir
     for i=1:150
         image(i,j)=0;
         
     end
    imshow(image)
end
image=uint8(image);
figure;
% imshow(image)