ColorImage = imread('OriginalImage.jpg');
figure;
imshow(ColorImage,'InitialMagnification','fit');

Grayscale = rgb2gray(ColorImage);
figure;
imshow(Grayscale,'InitialMagnification','fit');

NoisyImage = imnoise(Grayscale,'salt & pepper');
figure;
imshow(NoisyImage,'InitialMagnification','fit');

GeometricMean = geomean(Grayscale);
HarmonicMean = harmmean(Grayscale);

GeometricFiltered = imfilter(Grayscale, GeometricMean, 'symmetric');
figure;
imshow(AverageFiltered33,'InitialMagnification','fit');

HarmonicFiltered = imfilter(Grayscale, HarmonicMean, 'symmetric');
figure;
imshow(AverageFiltered55,'InitialMagnification','fit');