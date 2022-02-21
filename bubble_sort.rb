require "pry-byebug"





set = [4,3,78,2,0,2]







def bubble_sort (array)
    not_sorted = false
    k_iterations = (array.length() - 1)
    iterate(array,k_iterations, not_sorted)
end







def iterate (array,iterator, sorted)
    array.each_with_index.map do |num, index|
        if (sorted && iterator == 0 )
            p array
            exit
        elsif ( index == iterator  )
            iterator -= 1
            iterate(array,iterator,sorted)
        elsif num > array[index +1]
            sorted = true
            array[index] = array[index + 1]
            array[index + 1] = num
        elsif num <=  array[index +1]
            next
        end
    end
    array
end


byebug
bubble_sort([1,2,3])

