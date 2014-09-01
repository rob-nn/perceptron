function linear_perceptron()
	X = [	1 0 0
		1 0 1
		1 1 0
		1 1 1];

	y = [0 0 0 1]';


	m = size(X, 1);

	num_thetas = size(X, 2);

	theta = zeros(num_thetas, 1);

	alpha = 0.01;

	iterations = 200; 

	J = zeros(iterations, 1);
	for iter = 1:iterations
		temp = zeros(size(theta));
		h = X*theta;
		for theta_i = 1:num_thetas
			temp(theta_i) = theta(theta_i) - alpha * (1/m) * ... 
				sum((h - y) .* X(:,theta_i));	
		end	
		theta = temp;
		J(iter) = (1/(2*m)) * sum ((X*theta - y).^2);
	end;

	result = X*theta > 0.5;

	for i = 1:m
		str = strjoin({mat2str(X(i, 2)), 'and', mat2str(X(i,3)), '=', mat2str(result(i))}, ' ')
	end
	
	plot(J);
end
