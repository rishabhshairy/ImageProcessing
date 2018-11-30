I=double(imread('lena_noisy.pgm'));
[row,col]=size(I);
t=1;
for i=3:row-2
    for j=3:col-2
        for p=-2:2
            for q=-2:2
                t=t*I(p+i,q+j);
            end
        end
        M(i,j)=power(t,(1/25));
        t=1;
    end
end
figure(1),imshow(uint8(I));
figure(2),imshow(uint8(M));
        