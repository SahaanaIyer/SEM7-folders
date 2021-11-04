clc;
clear all;
close all;
x=[3 11 7 0 -1 4 2]; 
nx=-3:3;
xs=x;
ny=nx+2;
w=randn(1,length(ny));
nw=ny;
y=0.8*xs+w;
yf=fliplr(y);
LEx=nx(1);
LEy=ny(1);
Nx= length(x);
Ny = Nx;
LExy=LEx+LEy;
REx=nx(Nx);
REy=ny(Ny);
RExy=REx+REy;
Nxy=Nx+Ny-1;
Xn=[x zeros(1,Nxy-Nx)];
Yn=[yf zeros(1,Nxy-Ny)];
for i=0:Nxy-1
    sum=0;
    for j=0:i
         sum=sum+Xn(j+1)*Yn(i-j+1);
    end
    XY(i+1)=sum;
end
N1=length(nx); 
N2=length(ny);
n3=(nx(1)+ny(1)):(nx(N1)+ny(N2));
stem(n3,XY,'filled'); 
xlabel('lag variable m')