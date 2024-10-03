%DCT
clc; close all; 
clear all;
f=input('Enter the given image'); 
[x,y]=size(f);
for n=1:4 
    for k=1:4
        if k==1
            C(k,n)=sqrt(1/4); 
        else
            C(k,n)=sqrt((2/4)*(cos(pi*(2*(n-1)+1)*k)/8)); 
        end
    end
end
f 
C
DCT = C*f*C
