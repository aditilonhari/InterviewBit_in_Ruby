class Solution
    # @param a : constant array of integers
    # @return an integer
    def maxSubArray(a)
        if a == nil
            return 0
        end

        if a.length <= 1
            return a[0]
        end
        
        i = 0
        max_sum_so_far = a[i]
        current_max = a[i]
        i+=1
        while i < a.length
            current_max = [a[i], current_max + a[i]].max
            max_sum_so_far = [current_max, max_sum_so_far].max
            i += 1
        end
        
        return max_sum_so_far
    end
end
