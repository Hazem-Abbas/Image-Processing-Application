function [ res ] = gaussiann( img,m,u )%mean , standard deviation
[h,w,l] = size(img);
img = double(img);
pixels = h*w;
for i = 1:255
    gausian = round(((exp(-((i-m)^2/(2*u*u))))/(sqrt(2*pi*u)))*pixels);
    for a = 1:gausian
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


