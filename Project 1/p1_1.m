%Part1.1
hold all;

%defines the range of the system
n= -10:10;
f= inline('exp(-n/5).*cos(pi*n/5).*(n>=0)', 'n'); %given function

%Plot of f[n]
subplot(2,2,1);
f1=stem(n,f(n));
title('Function f[n]');
xlabel('n');
ylabel('f[n]');

%Plot of f[-2n]
subplot(2,2,3);
f2=stem(n,f(-2*n),'red');
title('f[-2n]');
xlabel('n'); 
ylabel('f[-2n]');

%Plot of f[-2n+1]
subplot(2, 2,2);
f3=stem(n,f(-2*n+1),'black');
title('f[-2n+1]');
xlabel ('n'); 
ylabel('f[-2n+1]');



