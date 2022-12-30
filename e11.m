clc;
close all;
clear all;


figure;
image=e11_noise(imread('benchmark/lena.png'),1000);
imshow(image);

figure;
image=e11_noise(imread('benchmark/airplane.png'),500);
imshow(image);

figure;
image=e11_noise(imread('benchmark/baboon.png'),700);
imshow(image);

figure;
image=e11_noise(imread('benchmark/peppers.png'),1500);
imshow(image);