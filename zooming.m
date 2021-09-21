function zooming(img_colour)
    img = im2gray(img_colour);
    low_res_I = imresize(img, 0.25, "bilinear");

    zoom_neighbour = imresize(low_res_I, 4, "nearest");
    zoom_bilinear = imresize(low_res_I, 4, "bilinear");
    zoom_cubic = imresize(low_res_I, 4, "bicubic");

    figure
    subplot(2,2,1), imshow(img), title('Original Grayscale Image')
    subplot(2,2,2), imshow(zoom_neighbour), title('Nearest Neighbour')
    subplot(2,2,3), imshow(zoom_bilinear), title('Bilinear Interpolation')
    subplot(2,2,4), imshow(zoom_cubic), title('Bicubic Interpolation')
    
    disp("Nearest neighbour psnr: ")
    psnr1 = psnr(img, zoom_neighbour)

    disp("Bilinear interpolation psnr: ")
    psnr2 = psnr(img, zoom_bilinear)

    disp("Bicubic interpolation psnr: ")
    psnr3 = psnr(img, zoom_cubic)
    
end

