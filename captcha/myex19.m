clc;
close all;
clear;
%options
alphabet_count = 10;
width = 500;
height = 200;
noise =0.1; % percent
number_of_rand_line=30;

% load alphabet
alphabet=load_alpha();

 mkdir 'captcha'
 A = {'image name', 'OCR result','original Text'};
 xlswrite('result.xls',A,1,'E1')
for n=1:150
    alpha=['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I','J', 'K', 'L', 'M' ...
    , 'N', 'O', 'P', 'Q','R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
     captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8'); ];
     orginal_Text=alpha(captcha_alphabet);
    captcha_image =[];
    for i=1:alphabet_count
     alpha =alphabet(:,:,captcha_alphabet(1,i));
     captcha=rand_background(alpha,alphabet_count);
     captcha=rotate(captcha);
     captcha_image =cat(2,captcha_image,captcha);
    end
     captcha_image = imresize(captcha_image, [height width]);
     captcha_image = my_noise(captcha_image,noise);
     captcha_image =PinchSpherize(captcha_image);
     captcha_image =rand_lines(captcha_image, number_of_rand_line);
     imshow(captcha_image);
     captcha_name =strcat('captcha',num2str(n),'.png'); 
     imwrite(captcha_image,captcha_name);
     movefile(captcha_name,'captcha');         
     write_results(captcha_image,captcha_name,n,orginal_Text);
    
end


      