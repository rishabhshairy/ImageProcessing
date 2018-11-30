I=imread('lena_noisy.pgm');
[row,col]=size(I);
s=1;
for i=2:row-1
    for j=2:col-1
        for p=-1:1
            for q=-1:1
                K(s)=I(p+i,q+j);
                s=s+1;
            end
        end
        s=1;
        A=sort(K)
        M(i,j)=A(9);
    end
end
figure(1),imshow(uint8(I));
figure(2),imshow(uint8(M));
      