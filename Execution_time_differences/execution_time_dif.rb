    #Phase 1
    #time_complexity: O(n^2)
    #space_complexity: O(n)

    def my_min_zero(int)

        (0...int.length).each do |i|
            curr_num = int[i]
            other_num = int[0...i] + int[i+1..-1]
            return curr_num if other_num.all? {|num| curr_num < num }
        end
    end
 
    list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    p my_min_zero(list)  # =>  -5

    #Phase 2
    #time complexity: O(n)
    #space complexity: O(1)
    def my_min_one(int)
        smallest_num = int.first
        
        (1...int.length).each {|i| smallest_num = int[i] if smallest_num > int[i]}
        smallest_num

    end

     p my_min_one(list)  # =>  -5


     #Largest Contiguous sub-sum
     #Phase 1 
    # Time complexity: 
    #Space complexity:


    #Example 1
     list = [5, 3, -7]
     p largest_contiguous_subsum(list) # => 8

    # # possible sub-sums
    # [5]           # => 5
    # [5, 3]        # => 8 --> we want this one
    # [5, 3, -7]    # => 1
    # [3]           # => 3
    # [3, -7]       # => -4
    # [-7]          # => -7
    #Example 2
    list = [2, 3, -6, 7, -6, 7]
    largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
    #Example 3
    list = [-5, -1, -3]
    largest_contiguous_subsum(list) # => -1 (from [-1])


         #Phase 2 
    # Time complexity: 
    #Space complexity: