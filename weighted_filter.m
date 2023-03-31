function [ res ] = weighted_filter( img   )
filt = [[1/16,1/8,1/16];[1/8,1/4,1/8];[1/16,1/8,1/16]];
res = correlation(img,filt);
%figure,imshow(res),title('img after weighted filter filter');
end

