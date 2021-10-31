ColorImage = imread('OriginalImage.jpg');
figure;
imshow(ColorImage,'InitialMagnification','fit');

Grayscale = rgb2gray(ColorImage);
figure;
imshow(Grayscale,'InitialMagnification','fit');

[height, width] = size(Grayscale);
c = 1;
y = 2;

PoweredImage = Grayscale;
for i=1:height
    for j=1:width
        PoweredImage(i, j) = c*Grayscale(i, j)^y;
    end
end

figure;
imshow(PoweredImage,'InitialMagnification','fit');

InverseLoggedImage = Grayscale;
for i=1:height
    for j=1:width
        InverseLoggedImage(i, j) = 10^(Grayscale(i, j)/c) - 1;
    end
end

figure;
imshow(InverseLoggedImage,'InitialMagnification','fit');