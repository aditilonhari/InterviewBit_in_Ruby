class Solution
    # @param a : array of integers
    # @return an integer
    def firstMissingPositive(a)
        if a == nil
            return nil
        end
        
        lowestPosNum = 99999999
        highestPosNum = -1
        
        a.each do |num|
            if num > 0 && num < lowestPosNum
                lowestPosNum = num
            end
            
            if num > 0 && num > highestPosNum
                highestPosNum = num
            end
        end
      
        (1..highestPosNum).each do |num_in_range|
            if !a.include?num_in_range
                return num_in_range
            end
        end
        
        return 1 if  lowestPosNum == 99999999 && highestPosNum == -1
        return highestPosNum+1
    end
end
