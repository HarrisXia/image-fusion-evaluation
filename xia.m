clc;
clear all;
close all;
%%
A=imread('25_1.png')
B=imread('25_2.png')
F=imread('25_fusion.jpg')
%%
A=double(A);
B=double(B);
F=double(F);
%%
grey_level=256;
Criteria = evaluation(A,B,F,grey_level);