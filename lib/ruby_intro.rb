# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) { |sum, i| sum + i }
end

def max_2_sum arr
  length = arr.length
  if length == 1
    return arr[0]
  end
  if length == 0
    return 0
  end
  second_max = -2**30
  max_number = -2**30
  for i in arr do
    if max_number < i
      max_number = i
      else if second_max < i
             second_max = i
           end
    end
  end
  max_2_sum = max_number + second_max
end

def sum_to_n? arr, n
  count = 0
  hash = Hash.new("twosum")
  arr.each do |i|
    hash[i] = count
    count+=1
  end
  # puts hash
  count = 0
  arr.each do |i|
    if hash.key?(n-i) && hash[n-i] != count
      return true
    end
    count+=1
  end
  false
end

# Part 2

def hello(name)
  name.strip
  hello = "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0
    false
    return
  end
  check = "bcdfghjklmnpqrstvwxyz"
  s = s.downcase
  if check.include?s[0]
    true
  else
    false
  end
end

def binary_multiple_of_4? s
  if s.count('1')+s.count('0') != s.length
    false
    return
  end
  n = s.length - 1
  if s[n] == '0' && s[n-1] == '0'
    true
  else
    false
  end
end

# Part 3

class BookInStock
  attr_reader :isbn, :price
  attr_writer :isbn, :price
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError.new("not available")
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    price_as_string = "$" + sprintf('%.2f', @price)
  end
end
