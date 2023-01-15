A = rand(4,1);

disp(A)

for j = 1:length(A)-1
    for  i = 1:length(A)-j
        if(A(i) >= A(i+1))
            temp = A(i);
            A(i) = A(i+1);
            A(i+1) = temp;
        end
    end
end

disp(A)