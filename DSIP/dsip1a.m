clc
clear all;
close all;
L=input("Desired length : ");
A=input("Amplitude : ");
omega=input("Angular Frequency : ");
n=0:L-1;
x=A*cos(omega*n);
stem(n,x);
xlabel("n");
ylabel("Amplitude");
title(["omega_0- ",num2str(omega)]);