I=double(imread('lena_noisy.pgm'));
[row,col]=size(I);
sum=0;
for i=3:row-2
    for j=3:col-2
        for p=-2:2
            for q=-2:2
                sum=sum+I(p+i,q+j);
            end
        end
        M(i,j)=(sum/25);
        sum=0;
    end
end
figure(1),imshow(uint8(I));
figure(2),imshow(uint8(M));
        
        
