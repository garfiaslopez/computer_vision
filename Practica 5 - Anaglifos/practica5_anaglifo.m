% GARFIAS LOPEZ JOSE DE JESUS
% STEREO ANAGLYPH


clear all, close all,clc
I1 = imread('izquierda.jpeg');
I2 = imread('derecha.jpeg');

A = stereoAnaglyph(I1,I2);
figure;
imshow(A);
title("Anaglifo");
imtool(A);
imwrite(A,'practica5_output_stereo.JPG');
