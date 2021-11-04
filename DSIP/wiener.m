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
f = [1 1 1 1; 1 1 1 1; 1 1 1 1; 1 1 1 1];
for i = 2:row-1
    for j = 2:col-1
        s(i,j) = (f(1)*r(i-1,j-1)+f(2)*r(i-1,j)+f(3)*r(i-1,j+1)+f(4)*r(i-1,j+2)+f(5)*r(i,j-1)+f(6)*r(i,j)+f(7)*r(i,j+1)+f(8)*r(i,j+2)+f(9)*r(i+1,j-1)+f(10)*r(i+1,j)+f(11)*r(i+1,j+1)+f(12)*r(i+1,j+2)+f(13)*r(i+2,j-1)+f(14)*r(i+2,j)+f(15)*r(i+2,j-1)+f(16)*r(i+2,j-2))/11;
    end
end
subplot(2,1,2)
imshow(s)