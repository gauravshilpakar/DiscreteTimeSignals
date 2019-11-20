clc;

nx=0:20; %range of x = [0,20]
ny=-20:10; %range of y = [-20,10]

%x[n]= u[n-5]-u[n-10]
x = inline('(nx>=5) - (nx>=10)', 'nx'); 

subplot(2,2,1);
stem(nx,x(nx),'red');
title('Plot of x[n]');
xlabel('n');
ylabel('x[n]');

%y[n]= u[-n-15]-u[-n-10]+d[n-2]
y = inline('(-ny>=15) - (-ny>=10) + (ny==2 )','ny'); 

subplot(2,2,3);
stem(ny,y(ny),'blue');
title('Plot of y[n]');
xlabel('n');
ylabel('y[n]');

%cross-correlation of x[n] and y[n]
[rxy,k]=p2_1(x(nx),y(ny),nx,ny); 

subplot(1, 2,2);
stem(k,rxy);
title('Plot of Cross-Correlation');
xlabel('k');
ylabel('r_{xy}');

% figure;
% r=xcorr(x(nx),y(ny));
% length(r)
% stem(k,r(1:length(k)));

