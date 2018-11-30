I=imread('lena.pgm');
[row,col]=size(I);
for k=1:row
    for j=1:col
        J(k,j)=45*log(1+double(I(k,j)));
    end
end
figure(1),imshow(uint8(I));
figure(2),imshow(uint8(J));