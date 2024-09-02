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
  return false unless string.match?(/\A[01]+\z/)
  slen = string.length
  if slen > 2 && string.end_with?("00")
    return true
  elsif string == "0"
    return true
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, "ISBN number cannot be empty" if isbn.empty?
    raise ArgumentError, "Price must be greater than zero" if price <= 0
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end
end
