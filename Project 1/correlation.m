%PART#2

function [rxy,k]=correlation(x,y,nx,ny)
n=[-ny(2) -ny(1)];
y=flip(y);
rxy=conv(x,y);
k=0:(length(rxy)-1);
k=k-(min(n(1),nx(1)))
end


