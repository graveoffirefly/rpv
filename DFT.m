%DFT
clc; close all; 
clear all;
f=input("Enter the given image") 
[x,y]=size(f);
for n=1:4 
    for k=1:4
        T(n,k)=exp(((-j)*2*pi*(n-1)*(k-1))/4); 
    end
end 
T
DFT=T*f*T'
