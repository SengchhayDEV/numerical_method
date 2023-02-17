clear all
clc
%enter the input below 
func = input ('function: ');
x1 = input ('first point: ');
x2 = input ('second point: ');
e = input ('tolerent');
iter = input('iteration: ');
%secantmethod operation
for i = 1:iter
    xr = (x1*func(x2)-x2*func(x1))/(func(x2)-func(x1));
    fprintf('x%d = %.8f\n', i, xr)
    if abs(xr-x2) < e
        break
    end
    x1 = x2
    x2 = xr
end
root = xr