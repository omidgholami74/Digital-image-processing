clc;
close all;
clear all;

img =imread('benchmark/watch.png');
figure;imshow(img);
R = img(:,:,1); 
G = img(:,:,2); 
B = img(:,:,3);
 k=110;
for i=303:589
   if k<0
       k=0;
   end
    for j=333+k:694-k
         if (R(i,j)>70 && R(i,j)<120 && G(i,j)>75 && G(i,j)<125 && B(i,j)>75 && B(i,j)<120)
                img(i,j,1)=255;
               img(i,j,2)=255;
               img(i,j,3)=255;
         end
%             if ~(R(i,j)>G(i,j) && G(i,j)>B(i,j))
%                 img(i,j,:)=[255,255,255];
%             end
    end
    if i<510
        k=k-1;
    elseif i>560
        k=k+5;
    else
        k=k+1
    end
end


figure;imshow(img);