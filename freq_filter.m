function [ res,filt ] = freq_filter( img ,d0, opt )
[h,w,l] = size(img);
filt = zeros(h,w);
filt_name = '';
for k = 1:h
    for m = 1:w
        d = sqrt((((h/2)-k)^2)+(((w/2)-m)^2));
        if opt == 1  %ideal lowpass
            if d<=d0
                filt(k,m) = 1;
            else
                filt(k,m) = 0;
            end
            filt_name = 'Ideal Lowpass Filter';
        elseif opt == 2 %butterworth lowpass
            po=4; %default (2n) n = 2
            filt(k,m)=1/(1+(d/d0)^po);
            filt_name = 'Butterworth Lowpass Filter';
        elseif opt == 3 %gaussian lowpass
            filt(k,m) = exp(((-1*d^2)/(2*d0^2)));
            filt_name = 'Gaussian Lowpass Filter';
        elseif opt == 4 %ideal highpass
            if d<=d0
                filt(k,m) = 0;
            else
                filt(k,m) = 1;
            end
            filt_name = 'Ideal Highpass Filter';
        elseif opt == 5 %butterworth highpass
            po=4; %default (2n) n = 2
            filt(k,m)=1/(1+(d0/d)^po);
            filt_name = 'Butterworth Highpass Filter';
        elseif opt == 6 %gaussian highpass
            filt(k,m) = 1-exp(((-1*d^2)/(2*d0^2)));
            filt_name = 'Gaussian Highpass Filter';
        end
    end
end

%to give 3-D matrix
res = dft_apply_filter(img ,filt,l); %the result is Green,Blue,Red 
if l>1   % to rearrange the matrix
    x = res(:,:,3); %red
    res(:,:,3) = res(:,:,2); %blue
    res(:,:,2) = res(:,:,1); %green
    res(:,:,1) = x; %red
end
%to give 2-D matrix
% for o = 1:l
%     res(:,:,o) = dft_apply_filter(img(:,:,o) ,filt,l);
% end

res = clipp(abs(res));
%figure,imshow(filt),title(filt_name);
%figure,imshow(res),title('Image after applying dft and filter');

end