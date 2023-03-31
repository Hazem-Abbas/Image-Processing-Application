function [ res ] = rayleiph( img,a,b )
img=double(img);
[h,w,l]=size(img);
pixels = h*w;
b1 = 2/b;
for i=1:255
    ray1=round(((b1)*(i-a)*exp((-(i-a)^2)/b))*pixels);
    for j=1:ray1
         k=ceil(rand(1,1)*h);
        m=ceil(rand(1,1)*w);
        for o=1:l
            img(k,m,o)=img(k,m,o)+50;
        end
    end
end
res = cont_stretch(img,0,255);
%figure,imshow(res),title('image with rayleigh noise');
end

