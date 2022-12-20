puts "hello world"

def sum(array)
    array.each {|i| sum += i}
end

def max_2_sum(array)
    puts array.max(2).sum
end
