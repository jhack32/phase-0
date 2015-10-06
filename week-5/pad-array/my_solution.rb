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
#What fill does is it will fill the array with an input (value) until the length given (array.length...min_size).
def pad!(array, min_size, value=nil)
  array.fill(value, array.length...min_size)
end
#non-destructive
#dup is copies the array.
def pad(array, min_size, value=nil)
  array.dup.fill(value, array.length...min_size)
end

# 4. Reflection
=begin

>Were you successful in breaking the problem down into small steps?

Yeah. We were able to break the problem into small steps. We thought about what the method had to do and broke it down.

>Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

We didn't have much trouble translating it. We just had to find a loop we wanted to use. We were going to start off using a for loop, but thought times loop may be better.

>Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solution was able to pass the tests it was supposed to. We tested our destructive pad method first and then went on to create our non-destructive pad test after.

>When you refactored, did you find any existing methods in Ruby to clean up your code?

Yes. We found the fill and dup methods to clean up our code. We were also able to put our times loop into one line, making the code look cleaner. The refactored solution were both one-liners. In our initial solution, we created a method that will return a value from the subtraction of min_size and array.length.

>How readable is your solution? Did you and your pair choose descriptive variable names?

I think our solution is pretty readible. We also added some comments on it to make it easier to understand what we did. I believe we had a good selection of descriptive variable names. It is easy to understand and sums up what it is.

>What is the difference between destructive and non-destructive methods in your own words?

Destructive methods are methods that will change your array or item permanently. If you wanted to create a method that will add something to the array/hash forever and have it stay there, it is a destructive method. Non-destructive items WON'T change your array/item permanently. If you added something to the array, it will put it there temporarily. The next time you call that array, the item you inserted into the array won't show.

=end