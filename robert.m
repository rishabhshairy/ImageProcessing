a=imread('cameraman.pgm');
b=im2double(a);
[m,n]=size(a);

%ROBERT
L(1:m,1:n)=0;
for i=1:m-2;
    for j=1:m-2;
        L(i,j)=-1*b(i,j)+0+0+1*b(i+1,j+1);
    end;
end;



M(1:m,1:n)=0;
for i=1:m-2;
    for j=1:m-2;
        M(i,j)=0-1*b(i,j+1)+1*b(i+1,j)+0;
    end;
end;
N=M+L;

imshow(N)
title('Robert    Gx+Gy');
