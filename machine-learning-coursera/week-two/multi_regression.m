clear;close all;clc;

% Examples X data set
X = [1	0.740032328	0.08623453	0.789363944	0.205674521;
    1	0.234826915	0.366436616	0.367652918	0.388271631;
    1	0.734957542	0.369198804	0.20602786	0.551778532;
    1	0.970598525	0.685028473	0.086666547	0.228953252;
    1	0.866930292	0.597941635	0.771933917	0.64194062;
    1	0.3	0.5	0.6	0.8];

% Real Values
Y = [0.484480372
    0.151845525
    0.781931967
    0.100606322
    0.294066334
    0.4];

% Samples
m = size(Y,1);
% Weights start at zero
thetas = zeros(5,1); % uses n features

% Learning Rate
a = 0.1;

% Start error in infinity
error = Inf;
steps = 10000;
measure = zeros(steps,2);
maxIt = steps;

% Train model
while maxIt > 0   % we can add a tolerance
    thetas = descent(thetas,X,Y,a);
    error = cost(X,Y,thetas); % calculate new error
    maxIt = maxIt - 1;
    measure(steps - maxIt,:) =  [ error, steps - maxIt ];
end

% Plot
title('Min J(\theta)')
plot(measure(:,2),measure(:,1),'r-', 'MarkerSize',5)
ylabel('Error')
xlabel('Iteration')
format long
% Output parameters value and error
disp('Value of thetas: ')
disp(thetas)

disp('Calculated error: ')
disp(error)