
%% Clear and Close Figures
clear ; close all; clc

fprintf('Loading data ...\n');

%% Load Data
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Scale features and set them to zero mean
fprintf('Normalizing Features ...\n');

[X mu sigma] = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];

fprintf('Running gradient descent ...\n');

% Choose some alpha value
alphas = [0.1 0.3 0.8 1 2 3 7 10];
num_iters = 400;

for alpha = alphas,
	% Init Theta and Run Gradient Descent 
	theta = zeros(3, 1);
	[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);

	% Plot the convergence graph
	figure;
	plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
	xlabel('Number of iterations');
	ylabel('Cost J');
end


