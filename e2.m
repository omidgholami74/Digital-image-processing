clc;
close all;
clear all;

image=imread('');
[height,width]=size(image)
r =50 
x=height/2;
y=width/2;
centeral = {x,y}; %midpoint
image(centeral{:})=1;

B = bwdist(image) <= r ;
imshow(B)