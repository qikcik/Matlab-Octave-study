function lab3_1()
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


function result = binarySearchInsertSort(input)

    % just insert first element, don't need to sort
    result = input(1);
    for currentIt = 2:length(input)
        current = input(currentIt);

        debug("current el:",current);

        ResultSearchToInsertStartInx = 1;
        ResultSearchToInsertEndInx = length(result);

        BeforeInxToInsert = -1;

        while BeforeInxToInsert == -1

            debug("search in:",result(ResultSearchToInsertStartInx:ResultSearchToInsertEndInx));

            ResultSearchToInsertDistance = (ResultSearchToInsertEndInx - ResultSearchToInsertStartInx);
            debug("distance:",ResultSearchToInsertDistance);

            if( ResultSearchToInsertDistance <= 1)
                debug("comparing with:",result(ResultSearchToInsertStartInx))

                BeforeInxToInsert = ResultSearchToInsertStartInx;
                if current > result(ResultSearchToInsertStartInx)
                    BeforeInxToInsert = ResultSearchToInsertStartInx+1;
                end

                if current > result(ResultSearchToInsertEndInx)
                    BeforeInxToInsert = ResultSearchToInsertEndInx+1;
                end

            end

            % Split array in half
            % Get center element
            ResultSearchToInsertMidInx = ResultSearchToInsertStartInx + round(ResultSearchToInsertDistance / 2);
            %disp(ResultSearchToInsertMidInx)
            ResultSearchToInsertMidIt = result(ResultSearchToInsertMidInx);

            % split array into half
            if( current < ResultSearchToInsertMidIt)
                ResultSearchToInsertEndInx = ResultSearchToInsertMidInx;
            else
                ResultSearchToInsertStartInx = ResultSearchToInsertMidInx;
            end


            %ResultSearchToInsertMidInx = ResultSearchToInsertStartInx + round((ResultSearchToInsertEndInx - ResultSearchToInsertStartInx) / 2);
        end
        %disp(AfterInxToInsert)

        debug("inx to insert:",BeforeInxToInsert);

        %build new result
        newResult = [];
        if BeforeInxToInsert-1 > 0
            newResult = result(1:BeforeInxToInsert-1);
        end
        newResult = [newResult, current];

        newResult = [newResult, result(BeforeInxToInsert:end)];

        result = newResult;

        %result = [result(1:BeforeInxToInsert), current, result(BeforeInxToInsert+1:end)];
        debug("new result",result);
    end
end


