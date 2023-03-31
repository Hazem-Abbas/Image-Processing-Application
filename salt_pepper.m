function [ res ] = salt_pepper( img,a,b )
[h,w,l] = size(img);
pixels = h*w;
salt = round(a*pixels);
pepper = round(b*pixels);
for i = 1:salt
        k = ceil(rand(1,1)*h);
        m = ceil(rand(1,1)*w);
        for o=1:l
            img(k,m,o) = 255;
        end
end

for i = 1:pepper
        k = ceil(rand(1,1)*h);
        m = ceil(rand(1,1)*w);
        for o=1:l
            img(k,m,o) = 0;
        end
end
res = uint8(img);
%figure,imshow(res),title('image with salt and pepper noise');
end

