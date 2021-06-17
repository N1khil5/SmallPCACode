dataMatrix = [4.7,3.3,3.8,0.5; 6.5,4.4,4.6,2.5; 7.4,2.8,2.9,2.1; 6.9,2.8,1.7,1.6; 6.3,3.1,2.8,1.6];

numDimensions = 2;

[COEFF, SCORE, LATENT, TSQUARED, EXPLAINED] = pca(dataMatrix);

reducedDimension = COEFF(:,1:numDimensions);

reducedMatrix = dataMatrix * reducedDimension;

reducedMatrix = reducedMatrix * -1