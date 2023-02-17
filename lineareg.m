function [A, syx, rsquare] = lineareg(x,y)
if numel(x) ~= numel(y)
    error('x and y should have the same length');
end
%
n = numel(x);
M_coef = [n sum(x); sum(x) sum(x.^2)];
b_coef = [sum(y); sum(x.*y)];
A = M_coef\b_coef;
%
Sr = 0;
for i = 1:n
    Sr = Sr + (y(i)- A'*[1 x(i)]')^2;
end
syx = sqrt(Sr/(n-2));
%
S1 = y - sum(y)/n;
St = sum(S1.^2);
rsquare = (St - Sr)/St;
end
    
  
      