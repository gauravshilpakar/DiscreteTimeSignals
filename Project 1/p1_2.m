%Part1.2
%Given system
%y[n]-y[n-1]+y[n-2]=x[n]
clc; clear;
hold all;
%defines the range of the system
n= 0:30;

%Character Equation
b=1; %for values of x 
a=[1 -1 1]; %for values of y

delta= inline('n==0','n');
h=filter(b,a,delta(n));

%Impluse Response h[n]
subplot(1,2,1);
stem(n,h,'red');
xlabel('n');
ylabel('h[n]');
title('Impulse Response h[n]');
subplot(1,2,2)
zplane(b,a); %For BIBO Stability

%Zero State(Impulse Response) For Given Input
figure;
subplot(1,2,1);
x = inline('cos(2*pi*n/6).*(n>=0)','n');
y = filter(b,a,x(n));
stem(n,y,'blue'); 
xlabel('n'); 
ylabel('y[n] for input x[n]=cos(2*pi*n/6)u[n]');
title('Zero State Response');


%Zero Input Response for give initial conditions
%y[-1]= 1 and y[-2]=-2
init = filtic(b,a,[1 2]); 
y0 = filter(b,a,zeros(size(n)),init); 
subplot(1,2,2);
stem(n,y0,'black');
title('Zero Input Response');
xlabel('n');
ylabel('y_{0}[n]'); 
