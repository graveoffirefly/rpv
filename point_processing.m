clc; clear all; close all;

Input = imread("burger.jpg");
subplot(3,3,1);
imshow(Input); title('Original Image');

Gray = rgb2gray(Input);
subplot(3,3,2); imshow(Gray); title('Gray Image');

[x, y] = size(Gray);

n = 8;
L = (2^n);
negative = zeros(x, y);
for i = 1:x
    for j = 1:y
        negative(i, j) = (L-1) - Gray(i, j);
    end
end
subplot(3,3,3);
imshow(uint8(negative)); title('Negative Image');

threshold = zeros(x, y);
for i = 1:x
    for j = 1:y
        if Gray(i, j) < 100
            threshold(i, j) = 0;
        else
            threshold(i, j) = 255;
        end
    end
end
subplot(3,3,4); imshow(uint8(threshold)); title('TT=100');

gray_slice_without_bg = zeros(x, y);
for i = 1:x
    for j = 1:y
        if Gray(i, j) >= 50 && Gray(i, j) <= 200
            gray_slice_without_bg(i, j) = 0;
        else
            gray_slice_without_bg(i, j) = 255;
        end
    end
end
subplot(3,3,5);
imshow(uint8(gray_slice_without_bg)); title('GL SWOB');

gray_slice_with_bg = zeros(x, y);
for i = 1:x
    for j = 1:y
        if Gray(i, j) >= 100 && Gray(i, j) <= 200
            gray_slice_with_bg(i, j) = 255;
        else
            gray_slice_with_bg(i, j) = Gray(i, j);
        end
    end
end
subplot(3,3,6); imshow(uint8(gray_slice_with_bg)); title('GL SWB');

C = 100;
log_img = zeros(x, y);
for i = 1:x
    for j = 1:y
        log_img(i, j) = C * log10(1 + double(Gray(i, j)));
    end
end
subplot(3,3,7);
imshow(uint8(log_img)); title('RC');

gamma = 1.1;
gamma_cor = zeros(x, y);
for i = 1:x
    for j = 1:y
        gamma_cor(i, j) = double(Gray(i, j)) .^ gamma;
    end
end
subplot(3,3,8);
imshow(uint8(255 * mat2gray(gamma_cor))); title('PLT (Gamma=1.1)');