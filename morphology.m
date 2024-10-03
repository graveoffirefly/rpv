clc; close all; clear all;

a = imread("burger.jpg");

b = rgb2gray(a);
subplot(3, 2, 1); imshow(b); title('Grayscale Image');

c = im2bw(b);
subplot(3, 2, 2); imshow(c); title('Binary Image');

SE = ones(5, 5);

d = imdilate(c, SE);
subplot(3, 2, 3); imshow(d); title('Dilated Image');

e = imerode(c, SE);
subplot(3, 2, 4); imshow(e);
title('Eroded Image');

open = imopen(c, SE);
subplot(3, 2, 5); imshow(open); title('Opened Image');

close1 = imclose(c, SE);
subplot(3, 2, 6); imshow(close1); title('Closed Image');