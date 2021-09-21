function result = psnr(img1, img2)
    result = sum((img1 - img2).^2, 'all') / numel(img1);
    result = 10 * log10((255*255)/result);
end

