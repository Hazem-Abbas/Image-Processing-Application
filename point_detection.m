function [ res ] = point_detection( img )
filt = [[-1,-1,-1];[-1,8,-1];[-1,-1,-1]];
res = correlation(img,filt);
%figure,imshow(res),title('img after point detection(laplacian)');
end

