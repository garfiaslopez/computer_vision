import cv2
import numpy as np
import matplotlib.pyplot as plt;


img = cv2.imread('fond.png')
back=cv2.imread('fondo.jpg')

#Recordando el orden RGB 0 1 2

r=np.zeros(img.shape,dtype='uint8');
g=np.zeros(img.shape,dtype='uint8');
b=np.zeros(img.shape,dtype='uint8');

r[:,:,0],g[:,:,1],b[:,:,2] = cv2.split(img)

#plt.title("NAME")
#plt.subplot(2, 2, 1),plt.imshow(rgb),plt.title('RGB')
#plt.subplot(2, 2, 2),plt.imshow(r), plt.title('RED')
#plt.subplot(2, 2, 3),plt.imshow(g),plt.title('GREEN')
#plt.subplot(2, 2, 4),plt.imshow(b),plt.title('BLUE')
#plt.show()

histg = cv2.calcHist([g],[1],None,[255],[0,255])


plt.plot(histg)
plt.show()

lowerG=np.array([0,250,0])
upperG=np.array([0,255,0])

mask = cv2.inRange(g,lowerG,upperG)
res=cv2.resize(mask,(1200,630))
cv2.imshow('mask',res)
cv2.waitKey(0)

imgRes = np.copy(img)
imgRes[mask != 0] = [0, 0, 0]
imgRes=cv2.resize(imgRes,(1200,630))
cv2.imshow('masked',imgRes)
cv2.waitKey(0)

bck=np.copy(back)
mask=cv2.resize(mask,(1200,630))
bck[mask == 0] = [0, 0, 0]
cv2.imshow('back',bck)
cv2.waitKey(0)

imgRes=cv2.resize(imgRes,(1200,630))

final_image = bck + imgRes
cv2.imshow('Resultado',final_image)
cv2.waitKey(0)
