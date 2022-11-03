im = double(imread('circles.png'));
imNoise = imnoise(im,'salt & pepper',0.02);

core = [1 1 1; 1 1 1; 1 1 1];

%Enlarge the black dot, Cover white dots
erodeImg = imerode(imNoise, core);

%Reduce the black dots in the white background of the image
dilateImg = imdilate(erodeImg, core);

%do it again, empty the black dots 
dilateImg2 = imdilate(dilateImg, core);

%fix weight
erodeImg2 = imerode(dilateImg2, core);

imshow(erodeImg2)