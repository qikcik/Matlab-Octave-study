function lab3_2()
    A =  rand(5,1);
    %A = [0.0782,0.4427,0.1067,0.9619,0.0046];

    As = binarySearchInsertSort(A);
    disp(A);
    disp(As);
end

function debug(desc,input)
    disp(desc);
    disp(input);
end

function BeforeInxToInsert = search(array,toFindVal)

    ResultSearchToInsertStartInx = 1;
    ResultSearchToInsertEndInx = length(array);
    
    BeforeInxToInsert = -1;
    
    while BeforeInxToInsert == -1
    
        debug("search in:",array);
    
        ResultSearchToInsertDistance = length(array)-1;
        debug("distance:",ResultSearchToInsertDistance);
    
        if( ResultSearchToInsertDistance <= 1)
            debug("comparing with:",array(1))
    
            BeforeInxToInsert = 1;
            if toFindVal > array(1)
                BeforeInxToInsert = 2;
            end
    
            if toFindVal > array(length(array))
                BeforeInxToInsert = length(array)+1;
            end
    
        end
    
        % Split array in half
        % Get center element
        ResultSearchToInsertMidInx = round(ResultSearchToInsertDistance / 2);
        disp(ResultSearchToInsertMidInx);
        %disp(ResultSearchToInsertMidInx)
        ResultSearchToInsertMidIt = array(ResultSearchToInsertMidInx);
    
        % split array into half
        if( toFindVal < ResultSearchToInsertMidIt)
            array = array(1:ResultSearchToInsertMidInx);
        else
            array = array(ResultSearchToInsertMidInx:end);
        end
    end
end

function result = binarySearchInsertSort(input)
    result = input(1);
    for currentInx = 2:length(input)
        currentVal = input(currentInx);
        insertInx = search(result,currentVal);
        result = [result(1:insertInx-1), currentVal, result(insertInx:end)];
    end
end


