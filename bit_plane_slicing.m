figure();

Input = imread("burger.jpg");

Gray = rgb2gray(Input);

subplot(3,3,1);
imshow(Gray); title('Gray Image');

B1 = bitget(Gray,1);
subplot(3,3,2); imshow(logical(B1)); title('LSB (Bit 1)');

B2 = bitget(Gray,2);
subplot(3,3,3); imshow(logical(B2)); title('Bit 2');

B3 = bitget(Gray,3);
subplot(3,3,4); imshow(logical(B3)); title('Bit 3');

B4 = bitget(Gray,4);
subplot(3,3,5); imshow(logical(B4)); title('Bit 4');

B5 = bitget(Gray,5);
subplot(3,3,6); imshow(logical(B5)); title('Bit 5');

B6 = bitget(Gray,6);
subplot(3,3,7); imshow(logical(B6)); title('Bit 6');

B7 = bitget(Gray,7);
subplot(3,3,8); imshow(logical(B7)); title('Bit 7');

B8 = bitget(Gray,8);
subplot(3,3,9); imshow(logical(B8)); title('MSB (Bit 8)');