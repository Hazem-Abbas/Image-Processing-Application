function [ res ] = cont_stretch( img,n_min,n_max ) %range from 0 to 255
[h,w,l] = size(img);
n_min = n_min/255;
n_max = n_max/255;
res=zeros(h,w,l);
img = double(img);
o_max = max(max(img));
o_min = min(min(img));
for k= 1:h
    for m= 1:w
        for e = 1:l
            res(k,m,e) = ((((img(k,m,e)-o_min(e))*(n_max-n_min))/(o_max(e)-o_min(e)))+n_min);
        end
    end
end
res=clipp(res);
%figure,imshow(res),title('img after contrast stretching');
end

