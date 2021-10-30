ColorImage = imread('OriginalImage.jpg');
figure;
imshow(ColorImage,'InitialMagnification','fit');

Grayscale = rgb2gray(ColorImage);
figure;
imshow(Grayscale,'InitialMagnification','fit');

[height, width] = size(Grayscale);
Low=10;
High=100;
Brightness = 60;

EnhancedImage = Grayscale;
for i=1:height
    for j=1:width
        if(Grayscale(i,j)>Low && Grayscale(i,j)<High)
            EnhancedImage(i, j) = Grayscale(i, j) + Brightness;
        end
    end
end

figure;
imshow(EnhancedImage,'InitialMagnification','fit');