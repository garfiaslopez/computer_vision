% GARFIAS LOPEZ JOSE DE JESUS
% GAMMA CORRECTION

clear all, close all,clc
A=imread('garfias2.JPG');
[M N L]=size(A);
B=zeros(M,N);
B = rgb2gray(A);

gama=10;

for x=1:M
    for y=1:N
        C(x,y)=255*((B(x,y)/255)^gama);
    end
end

figure;
imshow(B);
title("Escala de grises");
imwrite(B,'practica8_output_Gray.JPG');

figure;
imshow(C);
title("Corrección gama");
imwrite(C,'practica8_output_Gamma.JPG');

