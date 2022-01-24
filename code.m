clc; close all; clear;
% Collatz Conjecture
num = input("Enter a number: ");
i = 0;
data_point = [];
iterations = [];
while num > 1
    i = i + 1;
    if mod(num, 2) == 0
        num = num/2;
        data_point(i) = num;
        iterations(i) = i +1;
    else
        num = 3*num + 1;
        data_point(i) = num;
        iterations(i) = i +1;
    end
end
plot(iterations, data_point,'ko');
line(iterations, data_point);
legend(['Number of iterations: ', num2str(i)]);
