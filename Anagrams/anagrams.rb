#phase 1
#Time complexity: O(n!)
#Space complexity: O(n!)

def anagram?(str1, str2)
    anagrams = str1.split('').permutation.to_a
    anagrams.include?(str2.split(''))
end

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true
# p anagram?("elvisabc", "livesabc")    #=> true

#phase 2
#Time complexity: O(n)
#Space complexity: O(n)

def second_anagram?(str1, str2)
    str1.length.times do |i|
        idx = str2.index(str1[i])
        if idx 
            str2[idx] = ""
        end
    end
    str2.empty?
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true
# p second_anagram?("elvisabc", "livesabc")    #=> true

#phase 3
#Time complexity: O(n*log(n))
#Space complexity: O(log(n))

def third_anagram?(str1, str2)
    str1.split("").sort == str2.split("").sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true
# p third_anagram?("elvisabc", "livesabc")    #=> true

#phase 4
#Time complexity: O(n)
#Space complexity: O(n)

def fourth_anagram?(str1, str2)
    get_hash(str1) == get_hash(str2)
end

def get_hash(str)
    hash = Hash.new(0)
    str.each_char { |char| hash[char] += 1 }
    hash
end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true
# p fourth_anagram?("elvisabc", "livesabc")    #=> true
