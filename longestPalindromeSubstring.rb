# @param {String} s
# @return {String}
def longest_palindrome(s)
    n = s.length
    
    table = Array.new(n){Array.new(n)}
    maxLength = 1
    (0...n).each do |i|
        table[i][i] = true
    end
    
    start = 0
    (0..n-1).each do |i|
        if s[i] == s[i+1]
            table[i][i+1] = true
            start = i
            maxLength = 2
        end
    end
    
    (3..n).each do |k|
        (0..n-k+1).each do |i|
            j = i+k-1
            if table[i+1][j-1] && s[i] == s[j]
                table[i][j] = true
                if k > maxLength
                    start = i
                    maxLength = k
                end
            end
        end
    end

    return s[start,maxLength]
end
