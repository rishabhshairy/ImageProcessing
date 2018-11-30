I=double(imread('lena_noisy.pgm'));
[row,col]=size(I);
t=0;
for i=3:row-2
    for j=3:col-2
        for p=-2:2
            for q=-2:2
                t=t+(1/I(p+i,q+j));
            end
        end
        M(i,j)=25/t;
        t=0;
    end
end
figure(1),imshow(uint8(I));
figure(2),imshow(uint8(M));
        