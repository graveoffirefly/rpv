clc; close all; clear all;

a = imread("burger.jpg");
subplot(2,3,1);
imshow(a); title("Original Image");

b = rgb2gray(a);
subplot(2,3,2); imshow(b); title("Gray Image");

c = edge(b, "prewitt");
subplot(2,3,3);
imshow(1-c); title("Prewitt");

d = edge(b, "sobel");
subplot(2,3,4);
imshow(1-d); title("Sobel");

e = edge(b, "roberts");
subplot(2,3,5);
imshow(1-e); title("Roberts");

f = edge(b, "canny");
subplot(2,3,6);
imshow(1-f); title("Canny");