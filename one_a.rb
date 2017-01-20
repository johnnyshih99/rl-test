# assume list of numbers is provided as array of positive integers
# assume array will be properly provided, so no extra error
# => checking on the parameter
def sum(arr)
    r = 0
    arr.each do |a|
        r += a
    end
    return r
end

# sum_b print the sum of numbers that are divisible by either 3 or 5
def sum_b(arr)
    r = 0
    arr.each do |a|
        r += a if a % 3 == 0 or a % 5 == 0
    end
    return r
end

# div_4 is a boolean that if
# => true - print the sum of numbers that are divisible by 4
# => false - print the sum of numbers that are divisible by either 3 or 5
def sum_c(arr, div_4)
    r = 0
    arr.each do |a|
        if div_4
            r += a if a % 4 == 0
        else
            r += a if a % 3 == 0 or a % 5 == 0
        end
    end
    return r
end

# cond_arr is condition array that determines which numbers should
# => be added to the sum
# => e.g. cond_arr = [3,5] - print the sum of numbers that are divisible
# =>  by either 3 or 5
def sum_d(arr, cond_arr = [])
    r = 0
    if cond_arr.empty?
        arr.each {|a| r += a}
    else
        arr.each do |a|
            cond_arr.each do |ca|
                if a % ca == 0
                    r += a 
                    break
                end
            end
        end
    end
    return r
end