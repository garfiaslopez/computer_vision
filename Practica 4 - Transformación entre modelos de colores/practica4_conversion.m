% GARFIAS LOPEZ JOSE DE JESUS
% COLOR CONVERSION


% % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% RGB to CMY                                            %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % %
clear all, close all,clc
F=imread('garfias2.JPG', 'jpg');
F=im2double(F);
r=F(:,:,1);
g=F(:,:,2);
b=F(:,:,3);
c=1-r;
m=1-g;
y=1-b;
CMY=cat(3,c,m,y);
figure;
imshow(CMY);
title("CMY");
imwrite(CMY,'practica4_output_cmy.JPG');


% % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% RGB to HSI                                            %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % %
A=double(imread('garfias2.JPG', 'jpg'));
A=A/255;
[W H X]=size(A);
SS=zeros(W,H);
for f=1:H
    for c=1:W
    m=min([A(c,f,1) A(c,f,2) A(c,f,3)]);
    SS(c,f)=1-3*m/(A(c,f,1)+A(c,f,2)+A(c,f,3));
    end
end
figure;
imshow(SS);
title("HSI");
imwrite(SS,'practica4_output_hsi.JPG');



% % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% RGB to HSV                                            %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % %
rgbImage = imread('garfias2.JPG', 'jpg');
hsv2=rgb2hsv(rgbImage);
figure;
imshow(hsv2);
title("HSV");
imwrite(hsv2,'practica4_output_hsv.JPG');

% % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% RGB to YCbCr                                          %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % %
rgbImage = imread('garfias2.JPG', 'jpg');
I2 = rgb2ycbcr(rgbImage);
Y = I2(:,:,1);
Cb = I2(:,:,2);
Cr = I2(:,:,3);

figure;
imshow(I2);
title("YCbCr");
imwrite(I2,'practica4_output_YCbCr.JPG');
figure;
imshow(Y);
title("YCbCr - Y");
imwrite(Y,'practica4_output_Y.JPG');

figure;
imshow(Cb);
title("YCbCr - Cb");
imwrite(Cb,'practica4_output_Cb.JPG');

figure;
imshow(Cr);
title("YCbCr - Cr");
imwrite(Cr,'practica4_output_Cr.JPG');



% % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% RGB to Escala de grises                               %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % %
A=imread('garfias2.JPG', 'jpg');
[M N L]=size(A);
B=zeros(M,N);
gam=.5;
for x=1:M
    for y=1:N
    B(x,y)=0.3*A(x,y,1) +0.59*A(x,y,2)+0.11*A(x,y,3);
    end
end
B=uint8(B);
figure;
imshow(B);
title("Escala de grises");
imwrite(B,'practica4_output_Gray.JPG');

    
 






