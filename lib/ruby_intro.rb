# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.sum {|x| x.to_i}
end

def max_2_sum(arr)
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  unless arr.length < 2
    arr.each_with_index { |x, i|
      arr[i+1..-1].each { |y|
        return true if x + y == number
      }
    }
  end
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(string)
  !!string.match(/^[^\W\daeiou]/i)
end

def binary_multiple_of_4?(string)
  !!string.match(/^0$|^(0|1)*00$/)
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn == "" || price <= 0.0
      raise ArgumentError.new
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$%.2f" % @price
  end
end
