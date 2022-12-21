# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    arr.sum
end

def max_2_sum arr
    a = arr.max(2){ |a, b| a<=>b }
    a = a.sum
end

def sum_to_n? arr, n

    if arr.length == 0
        return false
    elsif arr.length == 1
        return false
    end
    arr.each_with_index do |x, index|
        arr.drop(index).each_with_index do |y, index2|
            if (x + y) == n and index != index2 + index
                return true
            end
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
        if s == ''
            return false
        else
            return s[0].match?(/b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|x|y|z/)
        end
end

def binary_multiple_of_4? s
    return false if binary_string.empty? || !binary_string.match(/^[01]+$/)
    number = binary_string.to_i(2)
    return number % 4 == 0
end

# Part 3

class BookInStock

    attr_writer :isbn
    attr_writer :price
    def initialize (isbn, price)
        # raise ArgumentError if isbn = "" || isbn.kind_of?(String)
        # raise ArgumentError if price <= 0
        raise ArgumentError if price <= 0
        raise ArgumentError if isbn.length <= 0
        @isbn = isbn
        @price = price
    end

    def price
        @price
    end

    def isbn
        @isbn
    end

    def price_as_string
        changePriceToStr = "%.2f" % @price.to_s
        return "$#{changePriceToStr}"
    end

end
