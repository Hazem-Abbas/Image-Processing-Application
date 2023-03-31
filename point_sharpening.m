function [ res ] = point_sharpening( img )
filt = [[-1,-1,-1];[-1,9,-1];[-1,-1,-1]];
res = correlation(img,filt);
%figure,imshow(res),title('img after point sharpening(img+laplacian)');
end

