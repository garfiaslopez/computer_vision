% GARFIAS LOPEZ JOSE DE JESUS
% CHROMA KEY

clear all, close all,clc

bg=double(imread('FondoPlaya.JPG'));
fg=double(imread('garfias3.JPG'));

fgR = fg(:,:,1);
fgG = fg(:,:,2);
fgB = fg(:,:,3);
fgY = 0.3*fgR+0.59*fgG+0.11*fgB;
 
fgG_Y=mat2gray(fgG-fgY);
thres = 180/255;
mask = fgG_Y < thres;

final(:,:,1)=fg(:,:,1).*mask + bg(:,:,1).*(1-mask);
final(:,:,2)=fg(:,:,2).*mask + bg(:,:,2).*(1-mask);
final(:,:,3)=fg(:,:,3).*mask + bg(:,:,3).*(1-mask);

F = mat2gray(final);
figure;
imshow(F);
title("Chroma Key");
imwrite(F,'practica7_output_Chroma.JPG');
