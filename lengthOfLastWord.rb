class Solution
    # @param a : string
    # @return an integer
    def lengthOfLastWord(a)

        if a == nil
            return nil
        end
        
       if a.rstrip.length == 0
            return 0
        end
    
        str_array = a.split(" ")
        last_word = str_array[str_array.length-1]

        return last_word.length
    end
end
