function lab2_2()
    A =  [1,7,2,4,5];
    As = bubble_sort(A);
    disp(A);
    disp(As);
end

function A = bubble_sort(A)
    for j = 1:length(A)-1
        control = true;
        for  i = 1:length(A)-j
            if(A(i) >= A(i+1))
                temp = A(i);
                A(i) = A(i+1);
                A(i+1) = temp;
                control = false;
            end
        end
        if(control)
            disp("exit!")
            return;
        end
        disp(A)
    end
end

