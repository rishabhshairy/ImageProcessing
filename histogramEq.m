I=imread('low_cameraman.pgm');
[row,col]=size(I);
w=255;
for i=1:256
    K(i)=0
end

for i=1:row
    for j=1:col
        K(I(i,j)+1)=K(I(i,j)+1)+1;
    end
end
cmf=0
for i=1:row
    cmf=cmf+K(i);
    K(i)=round((255*cmf)/(row*col));
end
for i=1:row
    for j=1:col
        J(i,j)=K(I(i,j)+1);
    end
end
figure(1),imhist(uint8(I));
figure(2),imhist(uint8(J));
