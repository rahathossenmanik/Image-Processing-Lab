ColorImage = imread('OriginalImage.jpg');
figure;
imshow(ColorImage,'InitialMagnification','fit');

Grayscale = rgb2gray(ColorImage);
figure;
imshow(Grayscale,'InitialMagnification','fit');

figure;
imhist(Grayscale);

[height, width] = size(Grayscale);
ThresholdedImage = zeros(height,width);
for i=1:height
    for j=1:width
        if(Grayscale(i,j)>90)
            ThresholdedImage(i,j)=1;
        end
    end
end

figure;
imshow(ThresholdedImage, [0,1],'InitialMagnification','fit');