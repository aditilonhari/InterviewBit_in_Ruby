class Solution
    # @param a : array of integers
    # @return an array of integers
    def wave(a)
        if a == nil || a.length < 2
            return a
        end

        a.sort!

        i = 0
        while( i < a.length - 1)
          until a[i+1] == nil
            temp = a[i]
            a[i] = a[i+1]
            a[i+1] = temp
           
            i+=2
          end
        end
        
        return a
    end
end
