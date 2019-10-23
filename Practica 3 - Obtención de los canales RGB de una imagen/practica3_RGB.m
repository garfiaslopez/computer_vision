% GARFIAS LOPEZ JOSE DE JESUS
% RGB DESCOMPOSITION

clear all, close all,clc
A=imread('garfias2.JPG', 'jpg');
[m n l]= size(A);

R=zeros(m,n,l);
G=zeros(m,n,l);
B=zeros(m,n,l);

for x=1:1:n
    for y=1:1:m
        R(y,x,1) = A(y,x,1);
        G(y,x,2) = A(y,x,2);
        B(y,x,3) = A(y,x,3);
    end
end

figure;
image(uint8(R));
figure;
imshow(A(:,:,1));
imwrite(uint8(R),'practica3_output_r.JPG');
figure;
image(uint8(G));
figure;
imshow(A(:,:,2));
imwrite(uint8(G),'practica3_output_g.JPG');
figure;
image(uint8(B));
figure;
imshow(A(:,:,3));
imwrite(uint8(B),'practica3_output_b.JPG');

