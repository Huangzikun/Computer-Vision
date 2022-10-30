figure
cameraMan = imread("cameraman.tif");


%{
1. write as jpeg, png and bmp
jpeg: 10717
png : 38267
bmp : 66614
%}
imwrite(cameraMan, "cameraman.jpeg", "jpeg");
imwrite(cameraMan, "cameraman.png", "png");
imwrite(cameraMan, "cameraman.bmp", "bmp");

jpeg = imfinfo("cameraman.jpeg");
png  = imfinfo("cameraman.png");
bmp  = imfinfo("cameraman.bmp");


%{
2. Figure out how to convert cameraman.tif to a binary image
0.58: threshold
%}
A = imbinarize(cameraMan, 0.58);
%imshowpair(cameraMan, A,'montage');


%{
3. Image Subtraction
%}
jpegImage = imread("cameraman.jpeg");
pngImage = imread("cameraman.png");
bmpImage = imread("cameraman.bmp");

histTif = histeq(cameraMan);
imshowpair(histTif, cameraMan, "diff");

HistJpeg = histeq(jpegImage);
%imshow(jpegImage - histJpeg); black
%imshow(histJpeg - jpegImage);
imshowpair(HistJpeg, jpegImage, "diff");


histPng = histeq(pngImage);
%imshow(histPng - pngImage);

histBmp = histeq(bmpImage);
%imshow(histBmp - bmpImage);
