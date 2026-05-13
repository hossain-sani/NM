clc;
clear;
close all;

% Input true and approximate values
true_value = input('Enter true value: ');
approx_value = input('Enter approximate value: ');

% Calculate errors
absolute_error = abs(true_value - approx_value);
relative_error = absolute_error / abs(true_value);

percentage_error = relative_error * 100;

% Display results
fprintf('\nResults:\n');
fprintf('-------------------------\n');

fprintf('Absolute Error = %f\n', absolute_error);
fprintf('Relative Error = %f\n', relative_error);
fprintf('Percentage Error = %f%%\n', percentage_error);

% Accuracy analysis
accuracy = 100
percentage_error;
fprintf('Accuracy = %f%%\n', accuracy);