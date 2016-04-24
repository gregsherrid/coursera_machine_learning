function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% % INITIAL: Without knowing about find:
% m = length(y);
% Accepts = [];
% Rejects = [];

% for i = 1:m,
% 	if y(i) == 0;
% 		Rejects = [Rejects; X(i,:)];
% 	else
% 		Accepts = [Accepts; X(i,:)];	
% 	end
% end

% plot(Accepts(:, 1), Accepts(:, 2), 'rx', 'MarkerSize', 8);
% plot(Rejects(:, 1), Rejects(:, 2), 'rx', 'MarkerSize', 4);

% axis([0 100 0 100]);
% ylabel('Test A Score');
% xlabel('Test B Score');


% figure; hold on;


% From the instructions
% Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y == 0);
% Plot Examples
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, ...
     'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
     'MarkerSize', 7);

axis([0 100 0 100])

ylabel('Test A Score');
xlabel('Test B Score');


% =========================================================================



hold off;

end
