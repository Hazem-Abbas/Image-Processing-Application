function [ res ] = clipp( img )
[h,w,l] = size(img);
for k = 1:h
        for m = 1:w
            for o = 1:l
                if img(k,m,o)<0
                    img(k,m,o) = 0;
                elseif img(k,m,o)>255
                    img(k,m,o) = 255;
                end
            end
        end
end
res = im2uint8(img);
end

