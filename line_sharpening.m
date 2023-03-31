function [ res ] = line_sharpening( img,opt )
filt_v = zeros(3,3);
filt_h =filt_v;
filt_dl =filt_v;
filt_dr =filt_v;
if opt == 1 %sobel
    filt_v = [[-1,0,1];
              [-2,0,2];
              [-1,0,1]];
    filt_h = [[-1,-2,-1];
               [0,0,0];
               [1,2,1]];
    filt_dl = [[0,-1,-2];
               [1,0,-1];
               [2,1,0]];
    filt_dr = [[2,1,0];
               [1,0,-1];
              [0,-1,-2]];

elseif opt == 2 %robert
    filt_v = [[01,0,0];
              [1,0,-1];
              [0,0,0]];
    filt_h = [[0,1,0];
              [0,0,0];
              [0,-1,0]];
    filt_dl = [[0,0,1];
               [0,0,0];
              [-1,0,0]];
    filt_dr = [[1,0,0];
               [0,0,0];
              [0,0,-1]];
end

res1 = correlation(img,filt_v);
res2 = correlation(img,filt_h);
res3 = correlation(img,filt_dl);
res4 = correlation(img,filt_dr);
res = res1+res2+res3+res4+img;

%figure,imshow(res),title('img after line sharpening(sobel&robert)');
end


