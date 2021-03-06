clear all
clc

%To detect Nose
I = imread('image2.jpg');
NoseDetect = vision.CascadeObjectDetector('Nose','MergeThreshold',16);

BB=step(NoseDetect,I);
 
 
figure,
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','b');
end
title('Nose Detection');
hold off;
