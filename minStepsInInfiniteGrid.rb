class Solution
    # @param a : array of integers
    # @param b : array of integers
    # @return an integer
    def coverPoints(a, b)
        if a == nil || b == nil || (a.length != b.length)
            return 0
        end

        if a.length < 2
            return 0
        end
        
        count = 0
        a.each_index do |i|
            if (i+1 < a.length)
                a_diff = (a[i] - a[i+1]).abs 
                b_diff = (b[i] - b[i+1]).abs
      
                if(a_diff < b_diff)
                    count += b_diff
                else
                    count += a_diff
                end
            end
        end
        
        return count
    end
end
