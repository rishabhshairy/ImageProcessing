I=double(imread('lena.pgm'));
[row,col]=size(I);
for k=1:row
    for j=1:col
        if I(k,j)<=50
            J(k,j)=0;
        elseif I(j,k)>50 && I(j,k)<100
            J(k,j)=1;
        elseif I(j,k)>100 && I(j,k)<120
            J(k,j)=1;
        else
            J(k,j)=2;
        end
    end
end

figure(1),imshow(uint8(I));
figure(2),imshow((J));