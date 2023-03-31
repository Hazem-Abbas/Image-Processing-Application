function [ res ] = correlation( img,filter )
[h,w,l] = size(img);
res = zeros(h,w,l);
[f_h,f_w] = size(filter);
pax = floor(f_w/2);
pay = floor(f_h/2);
padded_img = im2double(padd(img,pax,pay,2)); %1 for zero padding and 2 for replicate
for k = 1:h     
    for m = 1:w
        for o = 1:l %image loop
            sum = 0.0;
            for a = 1:f_h
                for b = 1:f_w %filter loop
                    sum = sum+filter(a,b)*padded_img(k+a-1,m+b-1,o);
                end
            end
            res(k,m,o) = sum;
        end
    end
end
res=im2uint8(res);
%figure,imshow(res),title('applied filter correlation');
end

