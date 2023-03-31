function [ res ] = min_mid_med_max( img,f_h,f_w,opt ) 
[h,w,l] = size(img);
values = zeros(f_h*f_w);
res = zeros(h,w,l);
pax = floor(f_w/2);
pay = floor(f_h/2);
padded_img = im2double(padd(img,pax,pay,2)); %1 for zero padding and 2 for replicate
for k = 1:h     
    for m = 1:w
        for o = 1:l %image loop
            index = 1;
            for a = 1:f_h
                for b = 1:f_w %filter loop
                    values(index) = padded_img(k+a-1,m+b-1,o);
                    index = index + 1;
                end
            end
            values=sort(values);
            if opt == 1 %min
                res(k,m,o) = values(1);
            elseif opt == 2 %midpoint
                res(k,m,o) = (values(1) + values(round((f_h*f_w))))/2;
            elseif opt == 3 %median
                res(k,m,o) = values(round((f_h*f_w)/2));
            elseif opt == 4 %max
                res(k,m,o) = values(round((f_h*f_w)));
            end
        end
    end
end
res=clipp(res);
%figure,imshow(res),title('img after Min_mid_med_max');               
end

