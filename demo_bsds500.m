% demo for benchmarking on BSDS500 based on the WACV15 paper,
% Yi-Ting Chen, Jimei Yang, Ming-Hsuan Yang, "Extracting Image Regions by Structured Edge Prediction."
% 
% Note:
% Before running the demo.m, make sure you follow the instructions in the readme file
% Yi-Ting Chen, chen558@purdue.edu or kasertim@gmail.com, June, 2015


addpath('./external/BSR/grouping/lib');
addpath(genpath('./external/toolbox-master'))
addpath ('./dataset/BSR/bench/benchmarks')

imgDir = './dataset/BSR/BSDS500/data/images/test';
gtDir = './dataset/BSR/BSDS500/data/groundTruth/test';
inDir = './dataset/BSR/BSDS500/ucm2/test_SEOWTUCM';
outDir = './dataset/BSR/BSDS500/ucm2/test_eval_SEOWTUCM';

if ~exist(inDir,'dir'), mkdir(inDir), end;
if ~exist(inDir,'dir'), mkdir(outDir),end;

D= dir(fullfile(imgDir,'*.jpg'));

% Generating ucm2 file for test images
total = zeros(1,numel(D));
for i =1:numel(D),

    outFile = fullfile(inDir,[D(i).name(1:end-4) '.mat']);
    if exist(outFile,'file'), continue; end
    imgFile=fullfile(imgDir,D(i).name);
    im2ucm2(imgFile, outFile);

    
 fprintf('\n');
 fprintf('Image %d finish\n',i);
 fprintf('---------------------------------------------------------\n');
end

% running all the benchmarks
tic
allBench(imgDir, gtDir, inDir, outDir)
toc;

plot_eval(outDir);