a=imread('lena.pgm');
b=im2double(a);
[m,n]=size(a);

N(1:m,1:n)=0
for i=1:m-2;
    for j=1:m-2;
        N(i,j)=-1*b(i,j)-1*b(i,j+1)-1*b(i,j+2)+0+0+0+1*b(i+2,j)+1*b(i+2,j+1)+1*b(i+2,j+2);
    end;
end;
O(1:m,1:n)=0
for i=1:m-2;
    for j=1:m-2;
        O(i,j)=-1*b(i,j)+0+1*b(i,j+2)-1*b(i+2,j)+0+1*b(i+1,j+2)-1*b(i+2,j)+0+1*b(i+2,j+2);
    end;
end;
Z=N+O;
imshow(Z)
title('Prewit    Gx+Gy');
