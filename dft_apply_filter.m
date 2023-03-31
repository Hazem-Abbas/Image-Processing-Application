function [ res ] = dft_apply_filter( img , filter,l )

%DFT
dfr = fft2(img);
dfr = fftshift(dfr);

% applying filter
re = real(dfr);
im = imag(dfr);

%if input is 3-D matrix
for o = 1:l
    new_re(:,:,o) = filter .* re(:,:,o);
    new_im(:,:,o) = filter .* im(:,:,o);
end

%if input is 2-D matrix
% new_re = filter .* re;
% new_im = filter .* im;

new_dfr = new_re  + i*new_im;

%inverse DFT
res = fftshift(new_dfr);
res = ifft2(res);
res = abs(res);
%res = log(1+res);
res = mat2gray(res);
end

