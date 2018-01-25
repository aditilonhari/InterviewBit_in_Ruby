class Solution
    # @param a : array of integers
    # @return an integer
    def solve(a)
        if a == nil
            return nil
        end
        
        greater_than_p = 0
        a.each do |current_element|
            greater_than_p = a.select{ |element| element > current_element }
            if greater_than_p.length == current_element
                return 1
            end
        end
        return -1
    end
end
