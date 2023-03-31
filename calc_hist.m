function [ res ] = calc_hist( img )
[h,w,l]=size(img);
res = zeros(256,1,l);
for k=1:h
    for o=1:w
        for j=1:l
            res(img(k,o,j)+1,1,j)= res(img(k,o,j)+1,1,j)+1;
        end
    end
end
for i = 1:l
    figure,bar(res(:,:,i)),title('Histogram');
end
end

