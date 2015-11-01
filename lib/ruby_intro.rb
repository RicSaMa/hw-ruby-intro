# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  if arr.size==0 
    return 0
  else
    arr.inject(:+)
  end
end

def max_2_sum (arr)
  if arr.size==0
    return 0
  elseif arr.size==1
    return arr[0]
  else
    aux = arr.sort.pop(2)
    return aux.inject(:+)
  end
end

def sum_to_n? (arr, n)
  if arr.size==0 || arr.size==1
    return false
  else
    aux=arr.permutation(2).to_a
    for item in aux
      return true if item.inject(:+)==n
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? (s)#/i es ignore case
  if s=~/^[A-Z]/i and s=~/^[^AEIOU]/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? (s)
  if s=~/^[01]+$/
    return s.to_i(2)%4==0
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.size==0 || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price_as_string
    return "$#{'%.2f' % price}"
  end
end
