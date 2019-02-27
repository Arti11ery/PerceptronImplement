function [X,Y]=PerceptronData(k,e,m)
for j = 1 : m
    for i = 1 : k-1
        X(j,i) = normrnd(0,1);
    end
    D = random('Exponential',1);
    r = rand(1);
    X(j,k) = (D+e)*(r>0.5)-(D+e)*(r<=0.5);
    Y(j) = 1*(X(j,k)>0)-1*(X(j,k)<0);
end
