clc;
close all;
clear all;

a = imread("burger.jpg");
subplot(3,3,1);
imshow(a);
title("original image");
b=rgb2gray(a);
subplot(3,3,2);
imshow(b);
title("grey image");

c=im2bw(b);
subplot(3,3,3);
imshow(c);
title("b\w image");

d= imcomplement(c)
subplot(3,3,4);
imshow(d);
title("negative image");

e= rgb2ycbcr(a)
subplot(3,3,5);
imshow(e);
title("ycbcr image");
