clc;
clear all;
close all;

image_watch = imread('benchmark/watch.png');
subplot(1,2,1);
imshow(image_watch);
h=impoly(gca,[521,293;633,341;685,424;630,533;511,577;383,537;337,433;397,336]);
setColor(h,'white');
R=image_watch(:,:,1);
G=image_watch(:,:,2);
B=image_watch(:,:,3);
k=150;
for arz=300:580  
    if k<0
        k=0;
    end
    for tol=337+k:685-k     
            if ~(R(arz,tol)>G(arz,tol) && G(arz,tol)>B(arz,tol))
                image_watch(arz,tol,:)=[255 255 255];
            end 
           
    end
     k=k-1;
end
subplot(1,2,2);
imshow(image_watch);