# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    arr.sum
end

def max_2_sum arr
    a = (arr.max(2){ |a, b| a<=>b }).sum
end

def sum_to_n? arr, n
    return false if arr.length == 0 || arr.length == 1
    arr.each_with_index do |x, index|
        arr.drop(index).each_with_index do |y, index2|
            return true if (x + y) == n and index != index2 + index
        end
    end
    return false
end

# Part 2

def hello(name)
    return "Hello, #{name}"
end

def starts_with_consonant? s
        s = s.to_s.downcase
        return s == '' ? false : s[0].match?(/b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|x|y|z/)
end

def binary_multiple_of_4? s
    return false if s.empty? || !s.match(/^[01]+$/)
    return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price
    def initialize (isbn, price)
        raise ArgumentError if price <= 0 || isbn.length <= 0
        @isbn, @price = isbn, price
    end

    def price_as_string
        changePriceToStr = "%.2f" % @price.to_s
        return "$#{changePriceToStr}"
    end
end
