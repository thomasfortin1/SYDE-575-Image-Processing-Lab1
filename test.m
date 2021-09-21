img = imread("cameraman.tif");
faded = img .* .5;
result = psnr(img, faded)


% for question 3
zooming(imread("cameraman.tif"));
zooming(imread("lena.tiff")); 