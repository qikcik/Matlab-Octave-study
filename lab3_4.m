function lab3_4()

    arrSize = 1000;

    bubbleSortCounter = [];
    bubbleSortWithBreakCounter = [];
    selectionSortCounter = [];
    insertSortCounter = [];


    for i = 1:arrSize
        bubbleSortCounter(i) = bubbleSort(rand(i,1));
        bubbleSortWithBreakCounter(i) = bubbleSortWithBreak(rand(i,1)); 
        selectionSortCounter(i) = selectionSort(rand(i,1));
        insertSortCounter(i) = insertSort(rand(i,1));
    end

    plot(1:arrSize,bubbleSortCounter); 
    hold on
    plot(1:arrSize,bubbleSortWithBreakCounter);
    hold on
    plot(1:arrSize,selectionSortCounter); 
    hold on
    plot(1:arrSize,insertSortCounter); 
    hold off
    %plot(1:n,bubbleSortCounter);
    %hold on
    %plot(1:n,bubbleSortCounter);
    %hold on
    %hold off

    legend('bubleSort','bubbleSortWithBreak','selectionSort','insertSort')
    title('number of operation per array size, avg. of 1000')
    ylabel('number of operation')
    xlabel('array size')

end



function [counter,A] = bubbleSort(A)
    counter = 0;
    for j = 1:length(A)-1
        counter = counter +1;

        for  i = 1:length(A)-j
            counter = counter +1;

            counter = counter +1;
            if(A(i) >= A(i+1))

                temp = A(i);
                counter = counter +1;

                A(i) = A(i+1);
                counter = counter +1;

                A(i+1) = temp;
                counter = counter +1;
            end
        end
    end
end

function [counter,A] = bubbleSortWithBreak(A)
    counter = 0;
    for j = 1:length(A)-1
        counter = counter +1;

        control = true;
        counter = counter +1;

        for  i = 1:length(A)-j
            counter = counter +1;

            counter = counter +1;
            if(A(i) >= A(i+1))

                temp = A(i);
                counter = counter +1;

                A(i) = A(i+1);
                counter = counter +1;
                
                A(i+1) = temp;
                counter = counter +1;

                control = false;
                counter = counter +1;
            end
        end
        counter = counter +1;
        if(control)
            
            return;
        end
    end
end

function [counter,sortedArray] = selectionSort(array)
    counter = 0;

    sortedArray = array(1);
    counter = counter +1;
    
    for i = 2:length(array)
        counter = counter +1;

        currentElement = array(i);
        counter = counter +1;

        inserted = false;
        counter = counter +1;
        
        for j = 1:length(sortedArray)
            counter = counter +1;

            counter = counter +1; 
            if currentElement < sortedArray(j)

                sortedArray = [sortedArray(1:j-1) currentElement sortedArray(j:end)];
                counter = counter +1;

                inserted = true;
                counter = counter +1;
                break;
            end
        end
        counter = counter +1;
        if ~inserted
            sortedArray = [sortedArray currentElement];
            counter = counter +1;
        end
    end
end

function [counter,array] = insertSort(array)
    counter = 0;
    
    for current = 1:length(array)
        counter = counter +1;

        min = current;
        counter = counter +1;

        for findMin = current:length(array)
            counter = counter +1;

            counter = counter +1;
            if array(findMin) < array(min)

                min = findMin;
                counter = counter +1;
            end
        end
    
        temp = array(min);
        counter = counter +1;

        array(min) = array(current);
        counter = counter +1;

        array(current) = temp;
        counter = counter +1;
        
    end
end

