function [ res ] = log_invlog( img,opt )
[h,w,l] = size(img);
res = zeros(h,w,l);
img = im2double(img);
for k = 1:h
    for m = 1:w
        for o = 1:l
                if (opt==1) %log
                    res(k,m,o)= log2(img(k,m,o)+1);
                elseif(opt==2) %inv_log
                    res(k,m,o)= (exp(img(k,m,o)+1)-2.7183)/4.6708; %c=1 (default)
                    %res(k,m,o)= exp(img(k,m,o)+1); %c=1 (default)
                    %res(k,m,o)= power(2.7,img(k,m,o))-1;
                elseif(opt==3) %inverse
                    res(k,m,o)= 1-img(k,m,o);
                end 
        end
    end
end
res=clipp(res);
%figure,imshow(res),title('img after log_invlog');
end

