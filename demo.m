% demo for extracting image regions based on the WACV15 paper,
% Yi-Ting Chen, Jimei Yang, Ming-Hsuan Yang, "Extracting Image Regions by Structured Edge Prediction."
% 
% Note:
% Before running the demo.m, make sure you follow the instructions in the readme file
% Yi-Ting Chen, chen558@purdue.edu or kasertim@gmail.com, June, 2015
%


% Add path for including gPb algorithm's lib
addpath('./external/BSR/grouping/lib');
addpath(genpath('./external/toolbox-master'))

imgFile = './Test_Example/000076.jpg';

I = imread(imgFile);

edge_orient = SESteerable(I);

ucm2 = contours2ucm(edge_orient, 'doubleSize');

ucm = ucm2(3:2:end, 3:2:end);

% Obtain boundaries of segmentation at scale k in range [0 1]
k =0.1; % this number is controlled to have different numbers of segments
bdry = (ucm >= k);

% get superpixels at scale k without boundaries:
labels2 = bwlabel(ucm2 <= k);
labels = labels2(2:2:end, 2:2:end);


figure;imshow(I);
figure;imshow(ucm);
figure;imshow(bdry);
figure;imshow(label2rgb(labels,'jet',[.5 .5 .5],'shuffle'));

