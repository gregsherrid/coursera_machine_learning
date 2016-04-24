function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

	% g = sigmoidHelper(z);
	g = arrayfun(@sigmoidHelper, z);

% =============================================================

end

function gInt = sigmoidHelper(zInt)
	gInt = 1 / (1 + e .^ (-zInt));
end