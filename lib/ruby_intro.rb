### ---------------------
###   CSCE-606.600
###   PA1 - Ruby Intro
###   Ryan Kafka
### ---------------------

# frozen_string_literal: true

# Part 1

def sum(arr)
  # sum up the values of an integer array
  # empty array should return zero
  if(arr.length == 0)
    return 0
  else
    return arr.inject(:+)
  end
  # alt option:
  #sumValue = 0
  #for i in range 0..(arr.length-1)
  # sumValue += arr[i]
  #end
  #return sumValue
end

def max_2_sum(arr)
  # @param arr: an array of integers
  # @return the sum of its two largest elements
  #           (empty array returns zero)
  #           (1 elemnt array returns that element)
  if(arr.length == 0)
    return 0;
  elsif(arr.length == 1)
    return arr[0];
  else
    top2 = arr.max(2)
    return sum(top2)
  end
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
  # @param string: a string being checked
  # @return whether the string reprents a binary number that is a multiple of 4
  result = false
  errorFlag = "1"
  last3 = " "
  if (string.length >= 3)
    errorFlag = "2"
    if(string !~ /[^01]/)
      errorFlag = "3"
      last3 = string.chars.last(3).join
      if (string.chars.last(3).join == "100")
        result = true
      end
    end
  elsif(string[0] == '0')
    if ((string.length == 1) || (string[1] == '0'))
      result = true
    end
  end
  #puts string + "(" + last3 + ") --> " + result.to_s + "[" + errorFlag + "]"
  return result
end

# Part 3

# Object representing a book
class BookInStock
  # represents a book!
  #   attributes:
  #   - ISBN Number (string)
  #   - Price (float)

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

  def isbn
    return @isbn
  end

  def price
    return @price
  end

  def isbn=(isbn_new)
    @isbn = isbn_new
  end

  def price=(price_new)
    @price = price_new
  end

    # Returns price as a formatted string with $ sign, commas and 2 decimal places
  def price_as_string
    output = "$%.2f" % [price]
    if(price <= 0)
      output += 0.00
    else
      output = "$%.2f" % [price]
    end
    return output
  end
end
