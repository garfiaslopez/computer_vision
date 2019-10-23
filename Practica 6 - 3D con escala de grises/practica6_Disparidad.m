% GARFIAS LOPEZ JOSE DE JESUS
% DISPARITY MAP

clear all, close all,clc
I1 = imread('izquierda.jpeg');
I2 = imread('derecha.jpeg');

disparityRange = [16 (16*7)];
disparityMap = disparity(rgb2gray(I1),rgb2gray(I2),'Method', 'BlockMatching','BlockSize',35, 'ContrastThreshold',5,'DisparityRange', disparityRange, 'UniquenessThreshold',3);

figure;
imshow(disparityMap,disparityRange);
title('Mapa de disparidad escala de grises');
colormap jet;
colorbar;

imwrite(disparityMap,disparityRange,'practica6_output_disparityMap.JPG');
