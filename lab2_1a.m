A = rand(2,1);

disp(A)

if(A(1) > A(2))
    temp = A(1);
    A(1) = A(2);
    A(2) = temp;
end

disp(A)