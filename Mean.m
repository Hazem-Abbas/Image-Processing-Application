function [ res ] = Mean( img , f_h,f_w )
filt = (1/(f_h*f_w))*ones(f_h,f_w);
res = correlation(img,filt);
%figure,imshow(res),title('img after mean filter');
end

