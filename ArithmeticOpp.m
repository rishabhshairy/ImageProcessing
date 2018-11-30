I=imread('lena.pgm');
J=imread('cameraman.pgm');
[r,c]=size(I);
for i=1:r
    for j=1:c
        K(i,j)=I(i,j)+J(i,j);
        L(i,j)=I(i,j)-J(i,j);
        M(i,j)=I(i,j)*J(i,j);
        N(i,j)=I(i,j)/J(i,j);
        O(i,j)=bitand(I(i,j),J(i,j));
        X(i,j)=bitor(I(i,j),J(i,j));
        Z(i,j)=bitxor(I(i,j),J(i,j));
    end
end
figure(1),imshow(uint8(K));
figure(2),imshow(uint8(L));
figure(3),imshow(uint8(M));
figure(4),imshow(uint8(N));
figure(5),imshow(uint8(O));
figure(6),imshow(uint8(X));
figure(7),imshow(uint8(Z));