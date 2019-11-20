%  Test your code from part c(i), using x[n] = u[n ? 5] ? u[n ? 10] over (0?n = nx ? 20)
%and y[n] = u[?n ?15] ? u[?n ? 10] + ?[n ? 2] over (?20 ? n = ny ? 10).
%Plot the result rxy as a function of the shift vector k.
%What shift k gives the largest magnitude of rxy[k]? Does this make sense?


x=[zeros(1,5) ones(1,6) zeros(1,10)]; %given
nx=[0 20]; %over (0?n = nx ? 20)
nx1=0:20;

y=[zeros(1,5) ones(1,6) zeros(1,20)]; %given
y(23)=1; 
ny=[-20 10]; % over (?20 ? n = ny ? 10).  
ny1=-20:10;


[rxy,k]=correlation(x,y,nx,ny); %using function in c(i)

stem(nx1,x);
hold on
stem(ny1,y);
hold on
stem(k,rxy);
xlabel('k');
title('correlation using function ''correlation'' ');
legend('x','y','r_{XY}');

