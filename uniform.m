function [ res ] = uniform( img , a,b )
[h,w,l] = size(img);
pixels = h*w;
uni = round((1/(b-a))*pixels);
for i = 1:255
    for a = 1:uni
        k = ceil(rand(1,1)*h);
        m = ceil(rand(1,1)*w);
        for o = 1:l
            img(k,m,o) = img(k,m,o)+50;
        end
    end
end
res = cont_stretch(img,0,255);
%figure,imshow(res),title('image with gaussian noise');
end

