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
newCell = imbinarize(cell, 7500);
imshowpair(cell, newCell, 'montage')

