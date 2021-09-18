img = imread("cameraman.tif");
faded = img .* .5;
result = psnr(img, faded)