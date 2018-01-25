class Solution
    # @param a : string
    # @param b : string
    # @return an integer
    def strStr(a, b)
        if a == nil || b == nil
            return nil
        end
        
        if b.length > a.length 
            return -1
        end
        
        if b.eql?a
            return 0
        end
        
        i = 0;  
        start_pos = -1;
        a.each_char.with_index do |ch,index|
            if ch == b[i]
                start_pos = index;
                while i < b.length
                    index +=1
                    i +=1
                    break if b[i] == nil
                    if a[index] == nil || a[index] != b[i]
                        start_pos = -1
                        i = 0
                        break
                    end
                end
                return start_pos if start_pos != -1
            end
        end
    
        return -1 if start_pos == -1
    end
end
