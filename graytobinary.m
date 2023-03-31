function [ new_img ] = graytobinary( img,thresh_hold )
[h w l] = size(img);
new_img = boolean(zeros(h,w));
for e=1:h
    for u = 1:w
        if(img(e,u)>=thresh_hold)
            new_img(e,u)=1;
        else
            new_img(e,u)=0;
        end
    end
end
%figure,imshow(res),title('Converted from gray to binary');
end

