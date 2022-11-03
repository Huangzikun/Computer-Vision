# Image Processing and Computer Vision
## Week 1
### function
* [imwrite](https://ww2.mathworks.cn/help/releases/R2022b/matlab/ref/imwrite.html?lang=en)
* [imbinarize](https://ww2.mathworks.cn/help/releases/R2022b/images/ref/imbinarize.html?lang=en)
* [histeq](https://ww2.mathworks.cn/help/releases/R2022b/images/ref/histeq.html?lang=en)
* [imshowpair](https://ww2.mathworks.cn/help/releases/R2022b/images/ref/imshowpair.html?searchHighlight=imshowpair&s_tid=doc_srchtitle)
### homework 
[P121353_HW1.m](week1/P121353_HW1.m)
1. Pick a grayscale image, e.g. cameraman.tif (available from the toolbox). Using the imwrite function, write it to files of type JPEG, PNG, and BMP and compare the sizes of those files.
2. Figure out how to convert cameraman.tif to a binary image.
3. Image Subtraction
Subtracting two images (that are of the same size) results in the difference between the two images. Experiment with some images by subtracting the original image from their respective histogram- equalised image. Does it result in anything meaningful?
Note: The resulting values could have either positive or negative values. Rescale the values to view the resulting image.


## Week 2
### function
* [bwmorph](https://ww2.mathworks.cn/help/releases/R2022b/images/ref/bwmorph.html?lang=en)
* [imbinarize](https://ww2.mathworks.cn/help/releases/R2022b/images/ref/imbinarize.html?lang=en)
* [graythresh](https://ww2.mathworks.cn/help/releases/R2022b/images/ref/graythresh.html?lang=en)
* [strel](https://ww2.mathworks.cn/help/releases/R2022b/images/ref/strel.html?lang=en)
### homework 
[P121353_HW2.m](week2/P121353_HW2.m)
1. Morphological noise removal (or morphological filtering)
Generate an image (i.e. circles.png) with salt & pepper noise using the Matlab code
Using what you have learned so far, remove the salt & pepper noise from the image. Note: for salt & pepper noise, some of the black pixels are white and some of the white pixels are black.