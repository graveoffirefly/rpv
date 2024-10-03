clc; close all; clear all;

a = imread("burger.jpg");
subplot(2,3,2);
imshow(a); title('Original Image');

[m, n, ~] = size(a);

red = a(:,:,1);
allzeros = zeros(m, n);
justred = cat(3, red, allzeros, allzeros);
subplot(2,3,4);
imshow(justred); title('Red Channel');

green = a(:,:,2);
justgreen = cat(3, allzeros, green, allzeros);
subplot(2,3,5);
imshow(justgreen); title('Green Channel');

blue = a(:,:,3);
justblue = cat(3, allzeros, allzeros, blue);
subplot(2,3,6);
imshow(justblue); title('Blue Channel');