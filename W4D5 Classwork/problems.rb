#N-Squared Solution

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(array)
    
    minimum = array[0]

    (0...array.length).each do |index_1|
        (index_1 + 1...array.length).each do |index_2|
            if array[index_1] < array[index_2] && array[index_1] < minimum
                minimum = array[index_1]
            end
        end
    end

    minimum

end


p my_min(list)

