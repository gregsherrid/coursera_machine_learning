function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

	% g = sigmoidHelper(z);
	g = arrayfun(@sigmoid_helper, z);
% =============================================================
end

function g_int = sigmoid_helper(z_int)
	g_int = 1 / (1 + e .^ (-z_int));
end