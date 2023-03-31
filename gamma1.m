function [ res ] = gamma1( img,a,b )
[h,w,l]=size(img);
img=double(img);
pixels = h*w;
a1 = a^b;
b1=b-1;
b2 = factorial(b1);
for i=1:255
    gam1=round((((a1)*(i^b1))/b2)*(exp((-(i-a)^2)/b))*pixels);
    for j=1:gam1
         k=ceil(rand(1,1)*h);
        m=ceil(rand(1,1)*w);
        for o =1:l
             img(k,m,o)=img(k,m,o)+50;
        end
    end
end

res=cont_stretch( img,0,255);
%figure,imshow(res),title('image with gamma noise');
end

