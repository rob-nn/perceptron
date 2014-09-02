function J = linear_perceptron_full_vectorized()
	X = [	1 0 0
		1 0 1
		1 1 0
		1 1 1];

	y = [0 0 0 1]';


	m = size(X, 1);

	theta = zeros(3, 1);

	alpha = 1;

	iterations = 100; 

	J = zeros(iterations, 1);
	E = 1;
	iter = 0;
	while all((X*theta > 0.5) == y) == 0 
		iter = iter + 1;
		h = X*theta;

		delta = h-y;

		partials = X' * delta; 
		theta = theta - alpha * (1/m) * partials;	
		E = (1/(2*m)) * sum ((X*theta - y).^2);
		J(iter) = E;
	end;


	result = X*theta > 0.5;

	for i = 1:m
		str = strjoin({mat2str(X(i, 2)), 'and', mat2str(X(i,3)), '=', mat2str(result(i))}, ' ')
	end
	iter	
	theta
	plot(J);
end
plot(linear_perceptron_full_vectorized());


