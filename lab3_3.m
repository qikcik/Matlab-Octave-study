function lab3_3()
    A =  rand(5,1);

    As = simplestSort(A);
    disp(A);
    disp(As);
end


function array = simplestSort(array)
    for current = 1:length(array)
        min = current;
        for findMin = current:length(array)
            if array(findMin) < array(min)
                min = findMin;
            end
        end
    
        temp = array(min);
        array(min) = array(current);
        array(current) = temp;
        
    end
end

