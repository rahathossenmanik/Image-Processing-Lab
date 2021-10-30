ColorImage = imread('OriginalImage.jpg');
figure;
imshow(ColorImage,'InitialMagnification','fit');

Grayscale = rgb2gray(ColorImage);
figure;
imshow(Grayscale,'InitialMagnification','fit');

NoisyImage = imnoise(Grayscale,'salt & pepper');
figure;
imshow(NoisyImage,'InitialMagnification','fit');

filter33 = ones(3,3)/20;
filter55 = ones(5,5)/20;
filter77 = ones(7,7)/20;

AverageFiltered33 = imfilter(Grayscale, filter, 'symmetric');
figure;
imshow(AverageFiltered33,'InitialMagnification','fit');

AverageFiltered55 = imfilter(Grayscale, filter, 'symmetric');
figure;
imshow(AverageFiltered55,'InitialMagnification','fit');

AverageFiltered77 = imfilter(Grayscale, filter, 'symmetric');
figure;
imshow(AverageFiltered77,'InitialMagnification','fit');