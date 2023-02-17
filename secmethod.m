function[xr]=secmethod(func,a,b,eps)
%func = input of function 
% a = input of first point
% b = input of second point
% eps = error value
x0 = a;
x1 = b;
f0 = func(x0);
f1 = func(x1);
xr = x1-(f1*(x0-x1)/(f0-f1));
err = abs(func(xr));
    while(abs(func(xr))>eps)
        x0 = xr;
        x1 = a;
        f0 = func(x0);
        f1 = func(x1);
        xr = x1-(f1*(x0-x1)/(f0-f1));
    end
    error = abs(func(xr))
    fprintf('root = %.8f\n', xr)
    fprintf('error = %.10f\n', error)
end

