function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
Carr = [0.01,0.03,0.1,0.3,1,3,10,30];
sigmarr = [0.01,0.03,0.1,0.3,1,3,10,30];
C = 0;
sigma = 1;
minerrr = inf(1);
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
%the code below will be using suggested C/sigma para to train and validate
%for the corresponding model
%
%
%
%
%
for i = 1:numel(Carr)
    for j = 1:numel(sigmarr)
        model = svmTrain(X, y, Carr(i), @(x1, x2) gaussianKernel(x1, x2, sigmarr(j)));
        pred = svmPredict(model, Xval);
        errr = mean(double(pred~=yval));
        if (errr < minerrr)
            minerrr = errr;
            sigma = sigmarr(j);
            C = Carr(i);
        end
    end
end




% =========================================================================

end
