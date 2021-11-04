clc;
clear all;
close all;
A1=imread('bird.jpg');
A = rgb2gray(A1);
numofpixels=size(A,1)*size(A,2);
subplot(3,1,1);
imshow(A1);
subplot(3,1,2);
imshow(A);
title('Original Image');
B=uint8(zeros(size(A,1),size(A,2)));
freq=zeros(256,1);
probf=zeros(256,1);
probc=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);
for i=1:size(A,1)
    for j=1:size(A,2)
        value=A(i,j);
        freq(value+1)=freq(value+1)+1;
        probf(value+1)=freq(value+1)/numofpixels;
    end
end
sum=0;
no_bins=255;
for i=1:size(probf)
   sum=sum+freq(i);
   cum(i)=sum;
   probc(i)=cum(i)/numofpixels;
   output(i)=round(probc(i)*no_bins);
end
for i=1:size(A,1)
    for j=1:size(A,2)
            B(i,j)=output(A(i,j)+1);
    end
end
subplot(3,1,3);
imshow(B);
title('Histogram equalization');
figure('Position',get(0,'screensize'));
dat=cell(256,6);
for i=1:256
    dat(i,:)={i,freq(i),probf(i),cum(i),probc(i),output(i)}; 
end
columnname =   {'Bin', 'Histogram', 'Probability', 'Cumulative histogram','CDF','Output'};
columnformat = {'numeric', 'numeric', 'numeric', 'numeric', 'numeric','numeric'};
columneditable =  [false false false false false false];
t = uitable('Units','normalized','Position',[0.1 0.1 0.4 0.9],'Data', dat,'ColumnName', columnname,'ColumnFormat', columnformat,'ColumnEditable', columneditable,'RowName',[]); 
figure(3);
subplot(2,1,1);
A = imhist(A);
bar(A);
title('Before Histogram equalization');
subplot(2,1,2);
B = imhist(B);
bar(B);
title('After Histogram equalization');