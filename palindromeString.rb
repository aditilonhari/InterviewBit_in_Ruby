class Solution
    # @param a : string
    # @return an integer
    def isPalindrome(a)
        
        if a == nil || a.length < 1
            return true
        end
        
        a.gsub!(/[^0-9a-z ]/i, '')
        a.delete!(' ')
        a.downcase!
        
        mid = (a.length - 1)/2 
        i = 0
        stack = []
        while i <= mid
            stack.push(a[i])
            i += 1
        end

        if a.length % 2 != 0
            stack.pop()
        end
        
        result = true
        while i <= a.length
            last = stack.pop()
            if(a[i].eql?last)
                result = 1
            else
                result = 0
                return result
            end
            i += 1
        end
        
        return result
    end
end
