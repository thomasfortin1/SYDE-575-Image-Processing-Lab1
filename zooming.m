
img_colour = imread("cameraman.tif");
img = im2gray(img_colour);
low_res_I = imresize(img, 0.25, "bilinear");
%imshow(low_res_I)

zoom_neighbour = imresize(low_res_I, 4, "nearest");
zoom_bilinear = imresize(low_res_I, 4, "bilinear");
zoom_cubic = imresize(low_res_I, 4, "bicubic");

imshow(zoom_neighbour)
%imshow(zoom_bilinear)
%imshow(zoom_cubic)

disp("Nearest neighbour psnr: ")
psnr1 = psnr(img, zoom_neighbour)

disp("Bilinear interpolation psnr: ")
psnr2 = psnr(img, zoom_bilinear)

disp("Bicubic interpolation psnr: ")
psnr3 = psnr(img, zoom_cubic)