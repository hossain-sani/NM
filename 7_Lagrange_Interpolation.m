clc;
clear;

n = input('Enter number of data points: ');

% Input x and y values
for i = 1:n
    x(i) = input(sprintf('Enter x(%d): ', i));
    y(i) = input(sprintf('Enter y(%d): ', i));
end

xp = input('Enter the value of x to interpolate: ');

yp = 0;

% Lagrange Interpolation
for i = 1:n
    p = 1;
    for j = 1:n
        if i ~= j
            p = p * (xp - x(j)) / (x(i) - x(j));
        end
    end
    yp = yp + p * y(i);
end

fprintf('Interpolated value at x = %f is y = %f\n', xp, yp);