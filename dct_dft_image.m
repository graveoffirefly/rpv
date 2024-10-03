clc; close all; clear all;

a = imread("burger.jpg");

f = rgb2gray(a);

subplot(2,3,1);
imshow(f); title("Original Image");

[x, y] = size(f);

DFT = fft2(f);

DFT_magnitude = log(abs(DFT) + 1);
subplot(2,3,2);
imshow(DFT_magnitude, []); title("DFT");

DFT_com = ifft2(DFT(1:floor(2*x/4), 1:floor(2*y/4)));
DFT_com_abs = abs(DFT_com);

subplot(2,3,3); imshow(uint8(DFT_com_abs)); title('Compressed Image');

subplot(2,3,4);
imshow(f);
title("Original Image (DCT)");

DCT = dct2(f);

DCT_magnitude = log(abs(DCT) + 1);
subplot(2,3,5);
imshow(DCT_magnitude, []); title("DCT");

DCT_com = idct2(DCT(1:floor(2*x/4), 1:floor(2*y/4)));
DCT_com_abs = abs(DCT_com);

subplot(2,3,6); imshow(uint8(DCT_com_abs)); title('Compressed Image');