class Solution
    # @param a : string
    # @return a string
    def longestPalindrome(s)
       i = 0
        max = ""
        size = s.size
        max_size = max.size
        while max_size/2 + i <= size - 1
            p = get_palindrome(s, i, i)
            if p.size > max_size
                max_size = p.size
                max = p
            end
            p = get_palindrome(s, i, i + 1)
            if p.size > max_size
                max_size = p.size
                max = p
            end
            i += 1
        end
        return max
    end
    
    def get_palindrome(string, i, j)
        while i >= 0 && j < string.size && string[i] == string[j]
            i -= 1
            j += 1
        end
        return string[i + 1.. j - 1]
    end
end
