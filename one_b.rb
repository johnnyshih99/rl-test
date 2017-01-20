# assume list of numbers is provided as array of positive integers
# assume array will be properly provided, so no extra error
# => checking on the parameter
# sum_b print the sum of numbers that are divisible by either 3 or 5
def sum_b(arr)
    r = 0
    arr.each do |a|
        r += a if a % 3 == 0 or a % 5 == 0
    end
    return r
end