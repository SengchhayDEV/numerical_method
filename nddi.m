clear all
clc
% input
X = input ('list of axis: ');
Y = input ('list of ordinate: ');
p0 = input ('point of approximation: ');
n = length(X);
D = zeros(n,n);
D(:,1) = Y;
for j = 2:n
    for i = j:n
        D(i,j) = (D(i,j-1)-D(i-1,j-1))/(X(i)-X(i-j+1));
    end
end
D
C = D(n,n);
for k = n-1:-1:1
    C = conv(C,poly(X(k)));
    m = length(C);
    C(m) = C(m) + D(k:k);
end
C
A = polyval(C,p0);
fprintf('Approximation value at given data point is: %.4f\n',A);
x = linspace(X(1),X(n),100);
y = polyval(C,x);
plot(x,y,'r')
hold on
plot(X,Y,'o')
        