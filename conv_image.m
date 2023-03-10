kernel =  [0 -1 0;
            -1 5 -1;
            0 -1 0];
        

file_path = 'airplane.png';
input_img_gray = rgb2gray(imread(file_path));

img_padded = rot90(padarray(rot90(padarray(input_img_gray, 1, 'both')), 1, 'both'), 3);
length = size(img_padded, 1);
height = size(img_padded, 2);

img_kernel = kernel;

for i=2:(height - 1)
    for j=2:(length - 1)
        part = img_padded(i -1 : i + 1, j - 1 : j + 1);
        resulted_matrix = double(part) .* img_kernel;
        res(i - 1, j - 1) = sum(resulted_matrix(:));
    end
end
subplot (1,2,1)
imshow(input_img_gray)
title("original image")
subplot (1,2,2)
imshow(uint8(res));
title("kernel image")

clear;