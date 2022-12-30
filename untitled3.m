clc;
clear data;
clear all;
image=imread('benchmark/boat.png');

[a,b]=size(image);
img=zeros(a,b);
for m=1:4000
    i=randi(a);
    j=randi(b);
    image(i,j)=0;
end
for m=1:4000
    i=randi(a);
    j=randi(b);
    image(i,j)=255;
end

 figure;
  imshow(img);
%filter miangin
 for i=2:a-1
     for j=2:b-1
         A=image(i-1,j);
         B=image(i+1,j);
        C=image(i-1,j+1);
        D=image(i-1,j-1);
        E=image(i+1,j-1);
        F=image(i+1,j+1);
        G=image(i,j+1);
        H=image(i,j-1);
        I=image(i,j);
%           img(i,j)=round((/9);
     end
  end
   figure;
  imshow(img);