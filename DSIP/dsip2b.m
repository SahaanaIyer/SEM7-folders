clc; 
clear all; 
close all;
prompt1 = 'values of x : ';
x = input(prompt1);
prompt2 = 'values of h : ';
h = input(prompt2);
nx=[0:10];LEx=nx(1);
nh=[0:1];LEh=nh(1);
Nx=length(x); 
Nh=length(h); 
LEy=LEx+LEh;
REx=nx(Nx);
REh=nh(Nh);
REy=REx+REh;
Ny=Nx+Nh-1;
Xn=[x zeros(1,Ny-Nx)];
Hn=[h zeros(1,Ny-Nh)]; 
for i=0:Ny-1
    sum=0;
    for j=0:i
         sum=sum+Xn(j+1)*Hn(i-j+1); 
    end
    Y(i+1)=sum; 
end 
subplot(1,3,1);
stem(nx,x,'r','filled');
xlabel('n');
title('x(n)'); 
subplot(1,3,2); 
stem(nh,h,'b','filled');
xlabel('n');
title('h(n)'); 
subplot(1,3,3); 
ny=LEy:REy; 
stem(ny,Y,'g','filled');
xlabel('n');
title('y(n)');