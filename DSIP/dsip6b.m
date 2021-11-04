clc;
clear all;
close all;
b = imread("pout.tif");
s=size(b);
r=s(1,1);
c=s(1,2);
con=input('Enter the constant value');
for i=1:r
    for j=1:c
        n(i,j)=con*log(1+double(b(i,j)));
    end
end
subplot(1,2,1);
imshow(b);
title('original image');
subplot(1,2,2);
imshow(n);
title('logged image');