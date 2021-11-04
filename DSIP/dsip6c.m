clear; 
clc;
A = imread('bird.jpg'); 
A=im2double(A);
r =size(A,1);1
c =size(A,2);
con = input('Enter a constant value : '); 
gamma = input('Enter value for gamma :'); 
for i =1:r
    for j =1:c
        B(i,j) = con *power(double(A(i,j)),gamma); 
    end
end
subplot(1,2,1),imshow(A),title('Original Image'); 
subplot(1,2,2),imshow(B),title('Image after power law transformation');