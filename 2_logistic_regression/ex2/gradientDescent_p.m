function [theta, J_history] = gradientDescent_p(X, y, theta, alpha, num_iters)
    %GRADIENTDESCENT Performs gradient descent to learn theta
    %   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
    %   taking num_iters gradient steps with learning rate alpha

    % Ported over from ex1 for my own gratification

    % Initialize some useful values
    m = length(y); % number of training examples
    n = length(X(1,:));
    J_history = zeros(num_iters, 1);

    [X_norm, mu, sigma] = featureNormalize_p([X]);
    % Unnormalize first column
    X_norm(:, 1) = X(:, 1);


    for iter = 1:num_iters

        update = zeros(3, 1);

        for i = 1:m,
            x = X_norm(i, :);
            cost = sigmoid(x * theta) - y(i);

            update += cost * x';
        end

        update = update * alpha / m;
        theta = theta - update;

        % ============================================================

        % Save the cost J in every iteration  
        cost = costFunction(theta, X_norm, y);
        % disp(cost);
        J_history(iter) = cost;

    end

    J_history(num_iters)
end
