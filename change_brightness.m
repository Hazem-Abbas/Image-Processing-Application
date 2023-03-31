function [ new_img ] = change_brightness( img,opt,degree )
[h w l] = size(img);
new_img = zeros(h,w,l);
img = im2double(img);
for k = 1 : h
    for m = 1 : w
        for o = 1 : l
           if(opt==1) %mul
               new_img(k,m,o)=img(k,m,o)*degree;
           elseif(opt==2) %add
               degree = degree/255;
               new_img(k,m,o)=img(k,m,o)+degree;
           elseif(opt==3) %div
               new_img(k,m,o)=img(k,m,o)/degree;
           elseif(opt==4) %sub
               degree = degree/255;
               new_img(k,m,o)=img(k,m,o)-degree;
           end
           if(new_img(k,m,o)>1)
               new_img(k,m,o) = 1;
           elseif(new_img(k,m,o)<0)
               new_img(k,m,o)=0;
           end
        end    
    end
end
   new_img=clipp(new_img);
   %figure,imshow(res),title('Changed Brightness');
end

