clc; 
clear all; 
close all;
x=[3 11 7 0 -1 4 2]; 
nx=-3:3; 
xs=x;
ny=nx+2;
w=randn(1,length(ny)); 
nw=ny;y=0.8*xs+w; yf=fliplr(y);
Ryx=conv(x,yf); 
N1=length(nx); 
N2=length(ny);
n3=(nx(1)+ny(1)):(nx(N1)+ny(N2));
stem(n3,Ryx,'filled'); xlabel('lag variable m')