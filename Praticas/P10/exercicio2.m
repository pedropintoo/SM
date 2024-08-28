[Image, ColorMap] = imread('Parede_8bit.bmp');
imshow(Image,ColorMap);

Save8bitImage('imageData.raw',Image);