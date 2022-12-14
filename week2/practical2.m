%1
figure
paper1 = imread("paper1.tif");
[m, n] = size(paper1);
new1 = paper1;
% not use im2bw
for i=1:m
    for j=1:n
        if(paper1(i, j) >= 243) 
            new1(i, j) = 255;
        else
            new1(i, j) = 0;
        end
    end
end

%imshow(new1);

%2
cell = imread("cell.tif");
eight = imread("eight.tif");
%histogram(cell)

newCell = imbinarize(cell, 0.4);
%imshowpair(cell, newCell, 'montage')
newEight = imbinarize(eight, 0.5);
%imshowpair(eight, newEight, 'montage')

%2.b
circles = imread("circles.png");
x = ones(256, 1) * (1:256);
im2 = double(circles) .* (x/2+50)+(1-double(circles)) .*x/2;
im3 = uint8(255*mat2gray(im2));

p1 = im3(:,1:64);
p2 = im3(:,65:128);
p3 = im3(:,129:192);
p4 = im3(:, 193:256);

%blockproc返回的为struct,需要访问.data为值
f = @(x) imbinarize(x.data, graythresh(x.data));
outimg = blockproc(im3, [256 64], f);


%6
core = [1 1 1; 1 1 1; 1 1 1;];
% dilation
text = imread("text.png");
imdilateResult = imdilate(text, core);
%imshowpair(text, imdilateResult, "montage");

% erosion
circbw = imread("circbw.tif");
erosionResult = imerode(circbw, core);
%imshowpair(circbw, erosionResult, "montage");

%closing and opening
circles = imread("circles.png");
clos = imclose(circles, core);
%imshowpair(circles, clos, "montage");
opens = imopen(circles, core);
%imshowpair(circles, opens, "montage");

%7
rice = imread('rice.png');
rice = rice>110;

%internal boundary and external boundary
erosionRice = imerode(rice, core);
%imshow(rice - erosionRice)
imdilateRice = imdilate(rice, core);
%imshowpair(imdilateRice - rice, rice - erosionRice, "montage")
%imshow(imdilateRice - erosionRice)




