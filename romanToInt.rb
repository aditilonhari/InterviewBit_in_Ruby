class Solution
    # @param a : string
    # @return an integer
    def romanToInt(a)
        if a == nil
            return a
        end
        
        hash = {}
        hash["I"] = 1
        hash["V"] = 5
        hash["X"] = 10
        hash["L"] = 50
        hash["C"] = 100
        hash["D"] = 500
        hash["M"] = 1000 
        
        str_arr = a.split("")
        total_value = 0
        str_arr.each_with_index do | letter, index|
            if hash.has_key?letter
                value = hash[letter]
                
                if letter == "V" && str_arr.index(letter) != 0
                    prev_letter_index = index-1
                    if str_arr[prev_letter_index] == "I"
                        value -= 2
                    end
                end
                if letter == "X" && index != 0
                    prev_letter_index = index-1
                    if str_arr[prev_letter_index] == "I"
                        value -= 2
                    end
                end
                if letter == "L" && index != 0
                    prev_letter_index = index-1
                    if str_arr[prev_letter_index] == "X"
                        value -= 20
                    end
                end
                if letter == "C" && index != 0
                    prev_letter_index = index-1
                    if str_arr[prev_letter_index] == "X"
                        value -= 20
                    end
                end
                if letter == "D" && index != 0
                    prev_letter_index = index-1
                    if str_arr[prev_letter_index] == "C"
                        value -= 200
                    end
                end
                if letter == "M" && index != 0
                    prev_letter_index = index-1
                    if str_arr[prev_letter_index] == "C"
                        value -= 200
                    end
                end
                total_value += value
            end
        end
        return total_value
    end
end
