# assume list of numbers is provided as array of positive integers
# assume array and condition array will be properly provided,
# => so no extra error checking on the parameters
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