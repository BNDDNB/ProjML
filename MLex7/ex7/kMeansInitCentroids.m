function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should return this values correctly
centroids = zeros(K, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should set centroids to randomly chosen examples from
%               the dataset X
%



%randperm is the random permutation function that returns a row vecotr containing a random perm of the integers from 1 to specified number

randinx = randperm(size(X,1));

%select first 1 to K items that is equivalent of shuffling them around
centroids = X(randinx(1:K),:);





% =============================================================

end

