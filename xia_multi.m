clc;
clear all;
close all;
%showlist = {'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35'};
%for one = 1:length(showlist)
clc;
clear;
close all;
%warning off;
% Load dictionary
addpath(genpath(cd));
for one = 1:9
%%
setName = num2str(one);
A = imread(strcat('/home/xia/0-github/2-fusion/FusionEvaluation/xia/multi-modal/', setName, '_2.png'));
B = imread(strcat('/home/xia/0-github/2-fusion/FusionEvaluation/xia/multi-modal/', setName, '_1.png'));
F=imread(strcat('/home/xia/0-github/2-fusion/xiahan/paper_compare/FGAN/F9_0', setName, '.png'));
%%
A=double(A);
B=double(B);
F=double(F);
%%
grey_level=256;
Criteria = evaluation(A,B,F,grey_level);
disp(Criteria)
end