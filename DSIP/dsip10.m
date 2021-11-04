clc;
clear all;
close all;
dim=imread('bird.jpg'); 
cim=double(dim); 
[r,c]=size(cim); 
r1=2*r; 
c1=2*c; 
pim=zeros((r1),(c1)); 
kim=zeros((r1),(c1)); 
for i=1:r 
for j=1:c 
pim(i,j)=cim(i,j); 
end 
end 
for i=1:r 
for j=1:c 
kim(i,j)=pim(i,j)*((-1)^(i+j)); 
end 
end 
fim=fft2(kim); 
n=1; 
thresh=10; 
gim=glp(fim,thresh); 
bim=blpf(fim,thresh,n); 
ghim=ghp(fim,thresh); 
bhim=bhp(fim,thresh,n); 
% him=hbg(fim,thresh); 
% him=hbb(fim,thresh,n); 
ifim=ifft2(ghim); 
for i=1:r1 
for j=1:c1 
ifim(i,j)=ifim(i,j)*((-1)^(i+j)); 
end 
end 
for i=1:r 
for j=1:c 
rim(i,j)=ifim(i,j); 
end 
end 
rim=real(rim); 
rim=uint8(rim); 
figure, imshow(rim); 

function res = glp(im, thresh)
[r,c]=size(im); 
d0=thresh; 
d=zeros(r,c); 
h=zeros(r,c); 
for i=1:r 
for j=1:c 
d(i,j)= sqrt( (i-(r/2))^2 + (j-(c/2))^2); 
end 
end 
for i=1:r 
for j=1:c 
h(i,j)=1- exp ( -( (d(i,j)^2)/(2*(d0^2)) ) ); 
end 
end 
for i=1:r 
for j=1:c 
res(i,j)=(h(i,j))*im(i,j); 
end 
end 
end

function res = blpf(im,thresh,n) 
[r,c]=size(im); 
d0=thresh; d=zeros(r,c); 
h=zeros(r,c); 
for i=1:r 
for j=1:c 
d(i,j)= sqrt( (i-(r/2))^2 + (j-(c/2))^2); 
end 
end 
for i=1:r 
for j=1:c 
h(i,j)= 1 / (1+ (d(i,j)/d0)^(2*n) ) ; 
end 
end 
for i=1:r 
for j=1:c 
res(i,j)=(h(i,j))*im(i,j); 
end 
end 
end

function res = ghp(im,thresh) 
[r,c]=size(im); 
d0=thresh; 
d=zeros(r,c); 
h=zeros(r,c); 
for i=1:r 
for j=1:c 
d(i,j)= sqrt( (i-(r/2))^2 + (j-(c/2))^2); 
end 
end 
A=1.75; 
for i=1:r 
for j=1:c 
h(i,j)= 1-exp ( -( (d(i,j)^2)/(2*(d0^2)) ) ); 
h(i,j)=(A-1)+h(i,j); 
end 
end 
for i=1:r 
for j=1:c 
res(i,j)=(h(i,j))*im(i,j); 
end 
end
end 

function res = bhp(im,thresh,n) 
[r,c]=size(im); 
d0=thresh; 
d=zeros(r,c); 
h=zeros(r,c); 
A=1.75;
for i=1:r 
for j=1:c 
d(i,j)= sqrt( (i-(r/2))^2 + (j-(c/2))^2); 
end 
end 
for i=1:r 
for j=1:c 
h(i,j)= 1 / (1+ (d0/d(i,j))^(2*n) ) ; 
h(i,j)=(A-1)+h(i,j); 
end 
end 
for i=1:r 
for j=1:c 
res(i,j)=(h(i,j))*im(i,j); 
end 
end
end
