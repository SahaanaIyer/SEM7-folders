clc;
clear all;
close all;
N = input("Enter N : ");
x1 = input("Enter N input sequences : ");
y = x1;
t1 = 0 : N-1;
subplot(3, 1, 1);
stem(t1, y);
ylabel("Amplitude");
xlabel("Time");
title("Entered Input");
X1 = zeros(1, N+1);
for k = 0 : N-1
    for n = 0 : N-1
        X1(k+1) =  X1(k+1) + x1(n+1) * exp(-j*pi*2*n*k/N);
    end
end
t = 0:N;
subplot(3,1,2);
stem(t,X1);
ylabel("Amplitude");
xlabel("Time");
title("DFT");
x1 = zeros(1, N+1);
x2 = zeros(1, N+1);
for k = 0:N-1
    for n = 0:N-1
        x2(k+1) = x2(k+1) + X1(n+1)*exp(j*pi*2*n*k/N);        
    end
end
x2 = x2/N;
t = 0:N;
subplot(3, 1, 3);
stem(t, x2);
ylabel("Amplitude");
xlabel("Time");
title("IDFT ");