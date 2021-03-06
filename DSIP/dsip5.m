clc
clear all;
close all;
x=ones(1,4);
x32f=fft(x,64);
shX32f=fftshift(x32f);
N=64,k=0:N-1;
subplot(121);
stem(k,abs(x32f),'filled');
xlabel('k');
ylabel('|X(k)|');
title('64-point DFT');
subplot(122);
stem(k,abs(shX32f),'filled');
xlabel('k');
ylabel('|X(k)|');
title('64-point Shifted DFT');