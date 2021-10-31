ColorImage = imread('OriginalImage.jpg');
figure;
imshow(ColorImage,'InitialMagnification','fit');

Grayscale = rgb2gray(ColorImage);
figure;
imshow(Grayscale,'InitialMagnification','fit');

Element = strel('line', 10, 45);

ErosionedImage = imerode(Grayscale, Element);
figure;
imshow(ErosionedImage,'InitialMagnification','fit');

DilatedImage = imdilate(Grayscale, Element);
figure;
imshow(DilatedImage,'InitialMagnification','fit');