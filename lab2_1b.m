A = rand(3,1);

disp(A)

for  i = 1:3-1
    if(A(i) > A(i+1))
        temp = A(i);
        A(i) = A(i+1);
        A(i+1) = temp;
    end
end

disp(A)