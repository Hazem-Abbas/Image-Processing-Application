function [ gray ] = rgbto2gray( img,r,g,b )
[h w l]=size(img);
gray = zeros(h,w);
gray=double(gray);
for l = 1 : h
    for k = 1 : w
        gray(l,k)= r*single(img(l,k,1))+g*single(img(l,k,2))+b*single(img(l,k,3));
    end;
end;
gray=uint8(gray);
%figure,imshow(res),title('Converted from rgb to gray');
end

