I=double(imread('lena_noisy.pgm'));
[row,col]=size(I);
sum1=0;
sum2=0;
for i=3:row-2
    for j=3:col-2
        for p=-2:2
            for q=-2:2
                sum1=sum1+power(I(p+i,q+j),2);
                sum2=sum2+power(I(p+i,q+j),3);
            end
        end
        M(i,j)=(sum2/sum1);
        sum1=0;
        sum2=0;
    end
end
figure(1),imshow(uint8(I));
figure(2),imshow(uint8(M));
        
        