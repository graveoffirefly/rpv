clc; close all; clear all;

a = imread("burger.jpg");
subplot(3,2,1);
imshow(a); title("Original Image");

b = rgb2gray(a);
subplot(3,2,2); imshow(b); title("Grayscale Image");

[x, y] = size(b);

lp = (1/9) * [1, 1, 1; 1, 1, 1; 1, 1, 1];
lpf = zeros(x, y);

for i = 2:x-1
    for j = 2:y-1
        lpf(i,j) = sum(sum(lp .* double(b(i-1:i+1, j-1:j+1))));
    end
end

subplot(3,2,3);
imshow(uint8(lpf)); title("Low Pass Filter");

gs = (1/16) * [1, 2, 1; 2, 4, 2; 1, 2, 1];
gsimg = zeros(x, y);

for i = 2:x-1
    for j = 2:y-1
        gsimg(i,j) = sum(sum(gs .* double(b(i-1:i+1, j-1:j+1))));
    end
end

subplot(3,2,4); imshow(uint8(gsimg)); title("Gaussian Filter");

hp = [-1, -1, -1; -1, 8, -1; -1, -1, -1];
hpimg = zeros(x, y);

for i = 2:x-1
    for j = 2:y-1
        hpimg(i,j) = sum(sum(hp .* double(b(i-1:i+1, j-1:j+1))));
    end
end

subplot(3,2,5); imshow(uint8(hpimg));
title("High Pass Filter");