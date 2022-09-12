### ---------------------
###   CSCE-606.600
###   PA1 - Ruby Intro
###   Ryan Kafka
### ---------------------

# frozen_string_literal: true

# Part 1

def sum(arr)
  #RJK# sum up the values of an integer array
  #RJK# empty array should return zero
  #RJK#  if(arr.length == 0)
  #RJK#    return 0
  #RJK#  else
  #RJK#    return arr.inject(:+)
  #RJK#  end
  #RJK# alt option 2:
  #RJK# Start with a base of zero and add items in the list to it
  return arr.inject(0) {|res,obj| res + obj }

  #
  # alt option 2:
  #sumValue = 0
  #for i in range 0..(arr.length-1)
  # sumValue += arr[i]
  #end
  #return sumValue
end

def max_2_sum(arr)
  #RJK# @param arr: an array of integers
  #RJK# @return the sum of its two largest elements
  #RJK#           (empty array returns zero)
  #RJK#           (1 elemnt array returns that element)
  #RJK# if(arr.length == 0)
  #RJK#   return 0;
  #RJK# elsif(arr.length == 1)
  #RJK#   return arr[0];
  #RJK# else
  #RJK#   top2 = arr.max(2)
  #RJK#   return sum(top2)
  #RJK# end
  return sum(arr.max(2))
end

def sum_to_n?(arr, number)
  #  @param arr:     an array of integers
  #  @param number:  an integer being checked as potential sum
  result = false  # should catch the empty / one-element array cases
  for i in 0..(arr.length-2)
    for j in (i+1)..(arr.length-1)
      if (arr[i] + arr[j] == number)
        result = true
      end
    end
  end
  return result
end

# Part 2

def hello(name)
  # @param name: string representing a name
  # @return the string hello concatenated with 'name'
  return "Hello, " + name
end

def starts_with_consonant?(string)
  # @param string: string being checked
  # @return whether the given string's first letter is a consonant
  if string.length == 0
    return false
  end
  firstLetter = string[0]
  vowels = ['A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u']
  return ((!vowels.include?(firstLetter)) && firstLetter.match?(/[A-Z]/i))
end

def binary_multiple_of_4?(string)
  #RJK# @param string: a string being checked
  #RJK# @return whether the string reprents a binary number that is a multiple of 4
  #RJK# result = false
  #RJK# errorFlag = "1"
  #RJK# last3 = " "
  #RJK# if (string.length >= 3)
  #RJK#   errorFlag = "2"
  #RJK#   if(string !~ /[^01]/)
  #RJK#     errorFlag = "3"
  #RJK#     last3 = string.chars.last(3).join
  #RJK#     if (string.chars.last(3).join == "100")
  #RJK#       result = true
  #RJK#     end
  #RJK#   end
  #RJK# elsif(string[0] == '0')
  #RJK#   if ((string.length == 1) || (string[1] == '0'))
  #RJK#     result = true
  #RJK#   end
  #RJK# end
  #RJK# #puts string + "(" + last3 + ") --> " + result.to_s + "[" + errorFlag + "]"
  #RJK# return result
  return (string.length>0 && (string !~ /[^01]/) && (string.to_i(2) % 4)==0)
end

# Part 3

# Object representing a book
class BookInStock
  # represents a book!
  #   attributes:
  #   - ISBN Number (string)
  #   - Price (float)

  #RJK# https://wwwrubyguides.com/2018/11/attr_accessor/
  attr_accessor :isbn, :price

  # constructor: accepts ISBN# and price
  def initialize(isbn_in, price_in)
    raise ArgumentError.new(
      "Expected a non-empty ISBN Number."
    ) if(isbn_in == "")
    raise ArgumentError.new(
      "Expected a price that is greater than $0."
    ) if (price_in <= 0.0)

    @isbn = isbn_in
    @price = price_in
  end

#RJK#  def isbn
#RJK#    return @isbn
#RJK#  end
#RJK#  
#RJK#  def price
#RJK#    return @price
#RJK#  end
#RJK#  
#RJK#  def isbn=(isbn_new)
#RJK#    @isbn = isbn_new
#RJK#  end
#RJK#  
#RJK#  def price=(price_new)
#RJK#    @price = price_new
#RJK#  end
#RJK#  
    # Returns price as a formatted string with $ sign, commas and 2 decimal places
  def price_as_string
    #RJK# output = "$%.2f" % [price]
    #RJK# if(price <= 0)
    #RJK#   output += 0.00
    #RJK# else
    #RJK#   output = "$%.2f" % [price]
    #RJK# end
    #RJK# return output
    return "$%.2f" % [price.to_f]
  end
end
