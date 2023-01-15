function lab2_4()

    %x = linspace(0,100);
    %y = comp(x);
    %plot(x,y)

    n= 100;
    y = [n,1];
    yBreak = [n,1];
    for i = 1:n
        y(i) = comp(i);
        yBreak(i) = comp_break(i);
    end
    plot(1:n,y);
    hold on
    plot(1:n,yBreak);
    hold off

    legend('bubleSort','bubleSort With break')
    title('number of operation per array size, avg. of 1000')
    ylabel('number of comparision')
    xlabel('array size')

end


function avg = comp(size)
    n = 1000;

    avg = bubble_sort(rand(size,1));
    for j = 1:n-1
        [counter,~] = bubble_sort(rand(size,1));
        avg = (avg + counter)/2;
    end
end

function avg = comp_break(size)
    n = 10;

    avg = bubble_sort_withBreak(rand(size,1));
    for j = 1:n-1
        [counter,~] = bubble_sort_withBreak(rand(size,1));
        avg = (avg + counter)/2;
    end
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

