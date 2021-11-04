clc;
clear all;
close all;

t=-2:1:2;
y=[zeros(1,2), ones(1,1), zeros(1,2)];
subplot(2,2,1);
stem(t,y);
ylabel('Amplitude');
xlabel('n');
title('Impulse');
 
n=input('Enter n value: ');
t=0:1:n-1;
y1=ones(1,n);
subplot(2,2,2);
stem(t,y1);
ylabel('Amplitude');
xlabel('n');
xlabel('Step');
 
n=input('Enter n value: ');
t=0:1:n-1;
subplot(2,2,3);
stem(t,t);
ylabel('Amplitude');
xlabel('n');
xlabel('Ramp');
 
n=input('Enter length of exponential sequence: ');
t=0:1:n-1;
a=input('Enter a value: ');
y2=exp(a*t);
subplot(2,2,4);
stem(t,y2);
ylabel('Amplitude');
xlabel('n');
title('Exponential');