# frozen_string_literal: true

# Part 1
require 'set'

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort.last(2).sum
end

def sum_to_n?(arr, number)
  if arr.size < 2
    return false
  end
  
  uniq_elem = Set.new
  arr.each do |item|
    val = number - item
    if uniq_elem.include?(val)
      return true
    end
    uniq_elem.add(item)
  end
  
  false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  string =~ /^[bcdfghjklmnpqrstvwxyz]/i ? true : false
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
