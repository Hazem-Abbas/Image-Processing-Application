function [gray] = rgbtogray( img ,option)
if option ==1 || option ==2 || option ==3 %Red or green or blue matrix
    gray=img(:,:,option); 
elseif    option ==4 %division method
    [h w l] = size(img);
    gray = zeros(h,w);
    gray = double(gray);

    for a=1 : h
        for b=1 : w
            gray(a,b)=(img(a,b,1)+img(a,b,2)+img(a,b,3))/3;
        end;
    end; 
    gray=uint8(gray); 
end
%figure,imshow(res),title('converted from rgb to gray');
end