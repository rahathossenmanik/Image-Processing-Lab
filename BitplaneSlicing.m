ColorImage = imread('OriginalImage.jpg');
figure;
imshow(ColorImage,'InitialMagnification','fit');

Grayscale = rgb2gray(ColorImage);
figure;
imshow(Grayscale,'InitialMagnification','fit');

[height, width] = size(Grayscale);

SlicedImage = Grayscale;
for i=1:height
    for j=1:width
        SlicedImage(i, j) = bitand(Grayscale(i, j),224);
    end
end

figure;
imshow(SlicedImage,'InitialMagnification','fit');