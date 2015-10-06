# Pad an Array

# I worked on this challenge [with: Kevin Mark]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Array, number, string (optional)
# What is the output? (i.e. What should the code return?) Array
# What are the steps needed to solve the problem?
# LOOP through array until min_size is reached
#   Take array and fill empty space with value input
# return result

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  pad_size(array, min_size).times { array.push(value) }
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  result = []
  array.each do |x|
    result.push(x)
  end
  pad!(result, min_size, value)
  return result
end

#calculates the remaining size after subtracting the length of array and size inputted.
def pad_size(array, min_size)
  min_size - array.length
end


# 3. Refactored Solution

#use fill (destructive)
def pad!(array, min_size, value=nil)
  array.fill(value, array.length...min_size)
end
#non-destructive
def pad(array, min_size, value=nil)
  array.dup.fill(value, array.length...min_size)
end

# 4. Reflection