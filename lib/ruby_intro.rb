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
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
