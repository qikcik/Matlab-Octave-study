function lab2_3()
    size = 20;
    n = 500;

    avg = bubble_sort(rand(size,1));
    for j = 1:n-1
        [counter,~] = bubble_sort(rand(size,1));
        avg = (avg + counter)/2;
    end

    disp("without break: ")
    disp(avg)

    avg = bubble_sort_withBreak(rand(size,1));
    for j = 1:n-1
        [counter,~] = bubble_sort_withBreak(rand(size,1));
        avg = (avg + counter)/2;
    end

    disp("with break: ")
    disp(avg)

end


function [counter,A] = bubble_sort(A)
    counter = 0;
    for j = 1:length(A)-1
        for  i = 1:length(A)-j
            counter = counter +1;
            if(A(i) >= A(i+1))
                temp = A(i);
                A(i) = A(i+1);
                A(i+1) = temp;
            end
        end
    end
end

function [counter,A] = bubble_sort_withBreak(A)
    counter = 0;
    for j = 1:length(A)-1
        control = true;
        for  i = 1:length(A)-j
            counter = counter +1;
            if(A(i) >= A(i+1))
                temp = A(i);
                A(i) = A(i+1);
                A(i+1) = temp;
                control = false;
            end
        end
        if(control)
            return;
        end
    end
end

