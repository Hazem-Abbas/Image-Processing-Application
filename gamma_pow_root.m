function [ res ] = gamma_pow_root( img,gamma )
[h,w,l] = size(img);
img = im2double(img);
res = zeros(h,w,l);
res=im2double(res);
for k = 1:h
        for m = 1:w
            for o = 1:l
                res(k,m,o)= power(img(k,m,o),gamma);
                if(res(k,m,o)>255)
                    res(k,m,o)=255;
                elseif(res(k,m,o)<0)
                    res(k,m,o)=0;
                end
            end
        end
end
res=im2uint8(res);
%imshow(res),title('img after Gamma');
end

