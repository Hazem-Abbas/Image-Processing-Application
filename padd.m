function [ res ] = padd( img , pax , pay , opt )
[h,w,l] = size(img);
res = zeros(h+(pay*2), w+(pax*2), l);
for k = 1:h
    for m =1:w
        for o = 1:l
            res(k+pay,m+pax,o) = img(k,m,o);
        end
    end
end
%padded with zero
if(opt==2) %replicate
    for o = 1:l
        %padding upper and lower rows
        for k = 1:pay
            res(k,pax+1:w+pax,o) = img( 1,:,o);
            res(h+pay+k,pax+1:w+pax,o) = img( end,:,o);
        end
        %padding left and right coloumns
        for m = 1:pax
            res(pay+1:h+pay,m,o) = img( :,1,o);
            res(pay+1:h+pay,w+pax+m,o) = img( :,end,o);
        end
        %padding corners
        res(1:pay,1:pax,o) = img(1,1,o);
        res(1:pay,w+pax:w+(pax*2),o) = img(1,end,o);
        res(h+pay:h+(pay*2),1:pax,o) = img(end,1,o);
        res(h+pay:h+(pay*2),w+pax:w+(pax*2),o) = img(end,end,o);
        
    end
end
res = uint8(res);
%figure,imshow(res),title('padded image');

end

