function [ res ] = equalization( img )
[h,w,l] = size(img);
res=zeros(h,w,l);
f = zeros(256,1,l);
pr = zeros(256,1,l);
cum = zeros(256,1,l);
n = h*w;
for k=1:h
    for o=1:w
        for j=1:l
            f(img(k,o,j)+1,1,j)= f(img(k,o,j)+1,1,j)+1;
            pr(img(k,o,j)+1,1,j) = f(img(k,o,j)+1,1,j)/n;
        end
    end
end
for k=1:256
    for j=1:l
        cum(k,1,j)=pr(k,1,j);
        if(k~=1)
            cum(k,1,j) = cum(k-1,1,j) + cum(k,1,j);
        end
    end
end
for k= 1:h
    for m= 1:w
        for e = 1:l
            res(k,m,e) = cum(img(k,m,e)+1,1,j);
        end
    end
end
res = im2uint8(res);
%figure,imshow(res),title('img after equalization');;
end

