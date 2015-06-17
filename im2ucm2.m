function im2ucm2(imgFile, outFile)

I = imread(imgFile);

edge_orient = SESteerable(I);

ucm2 = contours2ucm(edge_orient, 'doubleSize');

save(outFile,'ucm2');