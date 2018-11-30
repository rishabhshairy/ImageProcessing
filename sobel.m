a=imread('lena.pgm');
b=im2double(a);
[m,n]=size(a);

P(1:m,1:n)=0
for i=1:m-2;
    for j=1:m-2;
        P(i,j)=-1*b(i,j)-2*b(i,j+1)-1*b(i,j+2)+0+0+0+1*b(i+2,j)+2*b(i+2,j+1)+1*b(i+2,j+2);
    end;
end;


R(1:m,1:n)=0
for i=1:m-2;
    for j=1:m-2;
        R(i,j)=-1*b(i,j)+0+1*b(i,j+2)-2*b(i+1,j)+0+2*b(i+1,j+2)-1*b(i+2,j)+0+1*b(i+2,j+2);
    end;
end;
Y=P+R;
imshow(Y)
title('Soble  Gx+Gy');
