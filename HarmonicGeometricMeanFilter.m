ColorImage = imread('OriginalImage.jpg');
figure;
imshow(ColorImage,'InitialMagnification','fit');

Grayscale = rgb2gray(ColorImage);
figure;
imshow(Grayscale,'InitialMagnification','fit');

NoisyImage = imnoise(Grayscale,'salt & pepper');
figure;
imshow(NoisyImage,'InitialMagnification','fit');

GeometricFilter = geomean(Grayscale, 'all').^(1./9);
HarmonicFilter = 9/harmmean(Grayscale);

GeometricFiltered = imfilter(Grayscale, GeometricFilter, 'symmetric');
figure;
imshow(GeometricFiltered,'InitialMagnification','fit');

HarmonicFiltered = imfilter(Grayscale, HarmonicFilter, 'symmetric');
figure;
imshow(HarmonicFiltered,'InitialMagnification','fit');





clc;
clear all;
close all;
im = imread('flower2.jpg');
subplot(2,3,1)
imshow(im);

img = rgb2gray(im);
subplot(2,3,2)
imshow(img);

nimg = imnoise(img,'salt & pepper');
subplot(2,3,3)
imshow(nimg);
m=3;
n=3;
hmf =(m*n)./imfilter(1./nimg,ones(m,n),'replicate');
subplot(2,3,4)
imshow(hmf);
title('Harmonic mean filter');