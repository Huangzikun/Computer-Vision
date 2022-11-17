figure
cameraman = imread("cameraman.tif");
%img = imnoise(img, 'salt & pepper',0.02);
img = cameraman;

template = 3;

% by hand
%fill around 0
[x, y] = size(img);
extandGrayscale = zeros(x+2, y+2);
for i=2:x+1
    for j=2:y+1
        extandGrayscale(i, j) = img(i-1, j-1);
    end
end


for i=1:x-template+1+2
    for j=1:y-template+1+2
        %get template size array and get middle value
        c = extandGrayscale(i:i+(template-1), j:j+(template-1));
        middle = median(c, 'all');
        extandGrayscale(i+1, j+1) = middle;
    end
end


% medfilt2
% If black pepper pixels are added, median filtering can filter. But it will blur the picture
newImg = medfilt2(img);
%imshowpair(img, newImg, 'montage');

%question2
extandGrayscale = zeros(x+2, y+2);
for i=2:x+1
    for j=2:y+1
        extandGrayscale(i, j) = img(i-1, j-1);
    end
end

%%avg filter
for i=1:x-template+1+2
    for j=1:y-template+1+2
        %get template size array and get middle value
        c = extandGrayscale(i:i+(template-1), j:j+(template-1));
        avg = sum(c, 'all');
        extandGrayscale(i+1, j+1) = avg/9;
    end
end

extandGrayscale(1,:) = [];
extandGrayscale(x+1,:) = [];
extandGrayscale(:,1) = [];
extandGrayscale(:,y+1) = [];

extandUint8 = uint8(extandGrayscale);

%unsharp masking
% 3*3 avg filter and unsharp masking filter blur black pepper pixels
% If there is no black pepper pixel, the image will be blurred after the avg filter
% using unsharp masking img more clear 
filterImg = imsharpen(extandUint8);
imshowpair(extandUint8, filterImg, 'montage')

% If there is no black pepper, adding and subtracting will make the picture clearer
%imshowpair(img, img + (img - filterImg), 'montage');
%imshowpair(img, img + (img - extandUint8), 'montage');