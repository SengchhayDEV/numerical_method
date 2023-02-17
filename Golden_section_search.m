%% golden section search method
clc
clear all

func = input ('input of function: ')
xl = input   ('lower point : ')
xu = input   ('upper point : ')
n = input    ('number of iterations: ')
err = 0.0001;   %error

for i = 1:n
d = 0.5*(sqrt(5)-1)*(xu-xl);
x1 = xl + d;
x2 = xu - d;

if func(x1) > func(x2)
    xl = x2;
else
    xu = x1;
end
j = i + 1;
xx(j) = x1; jj = j - 1;
error = abs(xx(j) - xx(j-1));
if error < err, break; end
end
FF = func(x1);
disp(['optimal x: ' num2str(x1) ' , optimal value: ' num2str(FF) ' , accuracy: ' num2str(error) ' , No interations: ' num2str(jj)])
