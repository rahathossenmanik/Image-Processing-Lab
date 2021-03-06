ColorImage = imread('OriginalImage.jpg');
figure;
imshow(ColorImage,'InitialMagnification','fit');

Grayscale = rgb2gray(ColorImage);
figure;
imshow(Grayscale,'InitialMagnification','fit');

[height, width] = size(Grayscale);
Resizefactor = 0;

figure;
while Resizefactor<8
    ReducedImage = Grayscale/2^Resizefactor;
    CurrentHighBit = 256/2^Resizefactor - 1;
    subplot(3,3,Resizefactor+1);
    imshow(ReducedImage, [0,CurrentHighBit]);
    title(256/2^Resizefactor);
    Resizefactor = Resizefactor + 1;
end