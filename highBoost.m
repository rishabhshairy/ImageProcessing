I=double(imread('low_cameraman.pgm'));
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

%creating mask

for i=3:row-2
    for j=3:col-2
        mask(i,j)=I(i,j)-M(i,j);
    end
end

for i=3:row-2
    for j=3:col-2
        K(i,j)=I(i,j)+10*mask(i,j);
    end
end

figure(1),imshow(uint8(I));
figure(2),imshow(uint8(K));

        