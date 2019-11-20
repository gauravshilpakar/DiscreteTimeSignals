
function [rxy,k]=p2_1(x,y,nx,ny)
n= -ny(2) - ny(1)

p= n(1)
q= nx(1)

y=flip(y);
rxy=conv(x,y);
k=0:(length(rxy)-1);

k=k-(min(p,q));
end

