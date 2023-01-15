function lab2_5()
    input = [1,2,3,4,5,6,7,8,9,10];
    result = mergeSort(input);

    disp(input);
    disp(result);


end


function array = mergeSort(array)
    if length(array) == 1
        return;
    end
    if length(array) == 2
        if array(2) < array(1)
            array = [array(2),array(1)];
        end
        return;
    end 
end
