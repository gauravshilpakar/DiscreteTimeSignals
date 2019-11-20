%Part1.3
clc; clear;
hold all;

%defines the range of the system
n= 0:30;

h= inline('(cos(pi*n/3)+(sin(pi*n/3)/sqrt(3))).*(n>=0)', 'n') %impulse response
x= inline('cos(2*pi*n/6).*(n>=0)','n') %input 

y=conv(h(n),x(n),'same');

%stem(n, h(n),'red'); %Plots h[n] in red
%stem(n, x(n),'blue'); %Plots x[n] in blue
stem(n,y,'black'); %Plots Zero State Response y[n] in black
xlabel('n');
ylabel('y[n]');
title('y[n]=x[n]*h[n]');
