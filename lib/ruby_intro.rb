# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length ==1
  arr = arr.sort.reverse
  arr[0] + arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty? or arr.length == 1

  h = Hash.new
  for x in arr do
    if h.key? x
      return true
    else
      h[n-x] = n
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #/^[aeiou]/i.match(s) == nil and s.length > 0 and /^[a-z]/i.match(s) != nil
  /^[-b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
    attr_accessor :isbn
    attr_accessor :price

    def initialize(isbn, price)
        raise ArgumentError,
              "Illegal argument" if isbn.empty? or price <= 0
            @isbn = isbn
            @price = price
    end

    def price_as_string
        sprintf("$%2.2f", @price)
    end
end
