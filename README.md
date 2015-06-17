This Matlab code package is based on the WACV15 paper,
Yi-Ting Chen, Jimei Yang, Ming-Hsuan Yang, "Extracting Image Regions by Structured Edge Prediction."

1. Introduction:
    In this work, we propose to efficiently generate high quality image regions. The proposed algorithm links structured edge prediction and 
    gPb hierarchical image segmentation framework with steerable filters to generate high quality regions. The algorithm is evaluated on the BSDS500 dataset.


2. Note:
 
    It includes the redistributions of 
    
    1) Pablo Arbelaez's gPb algorithm code: http://www.eecs.berkeley.edu/Research/Projects/CS/vision/grouping/resources.html. The code is under "external" folder
    2) Piotr Dollar's structured edge detection code is included, which is the Version 1.0 (11/12/2013) - initial version corresponding to his ICCV 2013 paper
    3) I modified the version 1.0 code and redistribute in this package. I include the licence.txt from "Structured Edge Detection Toolbox," which is a source code package for   
       Piotr's ICCV 2013, ECCV 2014, PAMI 2015 (dowbloaded from https://github.com/pdollar/edges, and I include it in the "external" folder). 
    4) This code has been tested on Ubuntu 12.04 and 14.04 with Matlab 2014b and Matlab 2015a.


3. Instruction:
    1) Download the complete BSDS 500 dataset from http://www.eecs.berkeley.edu/Research/Projects/CS/vision/grouping/resources.html#bsds500. Unzip the zip file 
       and place it into the "dataset" folder

    2) Download Piotr Dollar's Matlab toolbox from https://github.com/pdollar/toolbox, and unzip and place the toolbox into the "external" folder.

    3) Finally, run demo.m

    4) For benchmarking on BSDS 500, please run demo_BSDS500.m


4. Citation:
    Please cite our paper if you use our code:
    Extracting Image Regions by Structured Edge Prediction.
    Yi-Ting Chen, Jimei Yang and Ming-Hsuan Yang, In WACV, 2015

    BibTex:
    @inproceedings{WACV15_YTChen,
     author = {Yi-Ting Chen, Jimei Yang and Ming-Hsuan Yang},
     title = {Extracting Image Regions by Structured Edge Prediction},
     booktitle = {WACV},
     year = {2015},
     location = {Waikoloa Beach, HI},
     pages = {1060 -- 1067},
     doi = {10.1109/WACV.2015.146},
     publisher = {IEEE}
    } 
 

5. Reference:
    1. P. Dollár and C. Zitnick, Structured Forests for Fast Edge Detection. ICCV 2013
    2. P. Arbelaez, M. Maire, C. Fowlkes, and J. Malik. Contour detection and hierarchical image segmentation. PAMI, 33(5):898–916, 2011
    3. W. T. Freeman and E. H. Adelson. The design and use of steerable filters. PAMI, 13(9):891–906, 1991

6. Q&A
    1. Sometimes, there might have an error message in executing the "edgesDetect" function in SESteerable.m and im2ucm.m, which is
       corresponding to the mex file in the private folder. If you encounter this issue, please restart the matlab to resolve this
       issue.

For any questions, please feel free to contact Yi-Ting Chen at chen558@purdue.edu or kasertim@gmail.com.
