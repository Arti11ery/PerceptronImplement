function step=Perceptron(k,e,m)
[X,Y]=PerceptronData(k,e,m);
w = zeros(k,1);
b = 0;
error = 1;
step = 0;
while error > 0
    error = 0;
    for i = 1 : m
        if sign(X(i,:)*w + b) ~= Y(i)
           error = error + 1;
           step = step + 1;
           w = w + Y(i) .* X(i,:)';
           b = b + Y(i);
        end
    end
end
b
w
step
