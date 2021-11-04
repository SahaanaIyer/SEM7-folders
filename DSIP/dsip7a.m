clc;
clear all;
close all;
rgb = imread("bird.jpg");
r = rgb2gray(rgb);
r = im2double(r);
s=r;
[row,col] = size(r);
subplot(2,1,1)
imshow(r)
f = ones(3,3);
for i = 2:row-1
    for j = 2:col-1
        s(i,j) = (f(1,1)*r(i-1,j-1)+f(1,2)*r(i-1,j)+f(1,3)*r(i-1,j+1)+f(2,1)*r(i,j-1)+f(2,2)*r(i,j)+f(2,3)*r(i,j+1)+f(3,1)*r(i+1,j-1)+f(3,2)*r(i+1,j)+f(3,3)*r(i+1,j+1))/9;
    end
end
subplot(2,1,2)
imshow(s)