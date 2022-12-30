function imageOut = e10_captcha(numbers)
%E10_CAPTCHA Summary of this function goes here
%   Detailed explanation goes here


files =dir('numbers/*.png');
blankImage=[];

for k =1:numbers
    temp=zeros(100,100);
    rand=randi(9);
    deg=randi(360);
        name =files(rand).name;
       image=imread(name);
%        path=strcat('numbers/',name)
%        image=e8_rotate(path,deg);
%        temp=image;
%        size(temp)
       blankImage =cat(2,blankImage,image);
end

imageOut= blankImage;