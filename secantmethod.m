clear all
clc
%Secant_method
%Input Section
func = input ('function: ');    %insert function
x1 = input ('first point: ');   %first point
x2 = input ('second point: ');  %second point
e = input ('tolerent:' );       %error
iter = input('iteration: ');    %number of iteration
% Code Operating method
for i = 1:iter
    xr = (x1*func(x2)-x2*func(x1))/(func(x2)-func(x1));
    fprintf('x%d = %.8f\n', i, xr)
    fprintf('error%d = %.8f\n', i, abs(xr-x2))
    if abs(xr-x2) < e
        break
    end
    x1 = x2
    x2 = xr
end
root = xr
fprintf('error = %.8f\n', abs(xr-x2))
    