function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

totalCost = 0;

for i = 1:m,
	x = X(i, :);
	% h = theta(1) * x(1) + theta(2) * x(2);
	h = x * theta;
	cost = (h - y(i)) ^ 2;
	totalCost += cost;
endfor

J = totalCost / (2 * m);


% =========================================================================

end
