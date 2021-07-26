clear;close all;clc;
% Small script showing how to apply gradient descent for a regression
% problem

% Variables
X = [1 2 4 0];
Y = [0.5 1 2 0];
m = 4;
% Parameters
thetas = [ 0 0 ];
% Learning Rate
alpha = 0.2;
% Hyp
H = @(x,t) t(1) + t(2)*x;
% Error
J = @(x,y,t) sum((H(x,t) - y) .^ 2) * 1/(2*m);
error = Inf;
% max number of iterations
maxIt = 1000;

% Fmesh
f = @(t0,t1) sum((H(X,[t0 t1]) - Y) .^ 2) * 1/(2*m); % MSE

subplot(212)
fmesh(f,[-0.2 0.4 0.3 0.7])
xlabel('\theta_{0}')
ylabel('\theta_{1}')
zlabel('J(\theta_{0},\theta_{1})')

% Contour plots
subplot(211)
fcontour(f,[-0.2 0.4 0.3 0.7])
title('Gradient Descent Regression');
xlabel('\theta_{0}')
ylabel('\theta_{1}')
hold on

while error ~= 0 && maxIt > 0   % we can add a tolerance
    ts = thetas; % temporal values
    % partial respect to t1
    thetas(1) = ts(1) - alpha * (1/m) * sum(H(X,ts) - Y);
    % partial respect to t2
    thetas(2) = ts(2) - alpha * (1/m) * sum((H(X,ts) - Y) .* X );
    
    error = J(X,Y,ts); % calculate new error
    
    % plot errors
    plot(thetas(1),thetas(2),'r*', 'MarkerSize',5)
    
    maxIt = maxIt - 1;
end

% plot final parameter values
 plot(thetas(1),thetas(2),'b*', 'MarkerSize',5)
 
% Output parameters value and error
disp('Value of thetas: ')
disp(thetas)

disp('Calculated error: ')
disp(error)

