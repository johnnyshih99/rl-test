# assume list of numbers is provided as array of positive integers
# assume array will be properly provided, so no extra error
# => checking on the parameter
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