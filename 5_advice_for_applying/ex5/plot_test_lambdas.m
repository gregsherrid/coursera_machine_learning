function plot_test_lambdas(X, X_poly, X_poly_val, yval, y, mu, sigma)
	lambda = 0;
	while lambda < 1000
		p = size(X_poly, 2) - 1;
		m = size(X, 1);

		[theta] = trainLinearReg(X_poly, y, lambda);

		% Plot training data and fit
		figure(1);
		plot(X, y, 'rx', 'MarkerSize', 10, 'LineWidth', 1.5);
		plotFit(min(X), max(X), mu, sigma, theta, p);
		xlabel('Change in water level (x)');
		ylabel('Water flowing out of the dam (y)');
		title (sprintf('Polynomial Regression Fit (lambda = %f)', lambda));

		fprintf('\nProgram paused. Press enter to continue.\n');
		pause;

		[error_train, error_val] = ...
		    learningCurve(X_poly, y, X_poly_val, yval, ...
				lambda);

		plot(1:m, error_train, 1:m, error_val);
		title(sprintf('Learning Curve (lambda = %f)', lambda))
		legend('Train', 'Cross Validation')
		xlabel('Number of training examples')
		ylabel('Error')
		axis([0 13 0 150])

		fprintf('\nProgram paused. Press enter to continue.\n');
		pause;

		if (lambda == 0)
			lambda = 0.1
		else
			lambda *= 2
		end

	end
end