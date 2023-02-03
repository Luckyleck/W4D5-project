#N-Squared Solution

#list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# def my_min(array)
    
#     minimum = array[0]

#     (0...array.length).each do |index_1|
#         (index_1 + 1...array.length).each do |index_2|
#             if array[index_1] < array[index_2] && array[index_1] < minimum
#                 minimum = array[index_1]
#             end
#         end
#     end

#     minimum

# end

# #p my_min(list)
# # O(n) - Linear Solution 
# def my_min_2(array)
# 	minimum = array[0]

# 	array.each do |ele|
# 		p minimum = ele if ele < minimum
# 	end
# 	minimum
# end

# # list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# # p my_min_2(list)

# #list = [5, 3, -7]
# list = [100, -1, 101, -5, -7] # [100, -1, 101] #200


# def largest_contiguous_sub_sum(array)
# 	max = 0

# 	(0...array.length).each do |i|
# 		(0...array.length).each do |j|
# 			p array[i..j]
# 			if array[i..j].sum > max
# 				max = array[i..j].sum
# 			end
# 		end
# 	end
# 	max
# end

# p largest_contiguous_sub_sum(list)
list = [100, -200, -1, 101, -5, -7]

def largest_contiguous_sub_sum_2(array)

    largest_sum = array[0]
    current_sum = array[0]

    (1...array.length).each do |i|
        if current_sum + array[i] < 0
            current_sum = 0
        elsif current_sum + array[i] > largest_sum
            largest_sum = current_sum + array[i]
        end
    end

    largest_sum

end

p largest_contiguous_sub_sum_2(list)





