I=double(imread('low_cameraman.pgm'));
[row,col]=size(I);
M1=max(I(:));
M2=min(I(:));
for i=1:row
    for j=1:col
        L(i,j)=((255-0)/(M1-M2)*(I(i,j)-0))+M2;
    end
end

figure(1),imshow(uint8(I));
figure(2),imshow(uint8(L));