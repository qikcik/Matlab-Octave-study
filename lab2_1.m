X = rand(20,1);

n = length(X);

for i = 1:n-1
    for j = 1:n-i
        if X(j) > X(j+1)
            temp = X(j);
            X(j) = X(j+1);
            X(j+1) = temp;
        end
    end
end
