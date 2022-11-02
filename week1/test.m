treesInfo = imfinfo("trees.tif");
treeInfo1 = treesInfo(1);

[trees, color] = imread("trees.tif");
figure
imshow(trees, color)

