# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: sum of the array
# Steps to solve the problem.

# Create method called total that accepts an array.
# set sum to 0
# for each number in the array
#  add the number to sum
# END the loop
# return the sum
# end the method

# 1. total initial solution

def total(array)
  sum = 0
  array.each do |x|
    sum += x
  end
  return sum
# for_loop(array)
end

#for loop
def for_loop(n)
  sum = 0
  for i in n
   p sum += i
  end
  return sum
end


# 3. total refactored solution

def total(array)
  sum = 0
  array.each { |x| sum += x }
  return sum
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array to the sentence_maker method
# Output: creates a grammatically correct sentence.
# Steps to solve the problem.

=begin
create the method sentence_maker that takes an argument
create a local variable (sentence) and make it a string
  for each word of the array
    add the word to the sentence variable along with a space
  end the each loop
    add a period to the end of the word
    get rid of the extra space at the end of the sentence
    return the sentence and capitalize it
end the method
=end

# 5. sentence_maker initial solution

def sentence_maker(array)
  sentence = String.new
  array.each do |x|
    sentence += x.to_s + " "
  end
  sentence[-2] += "."
  sentence[-1] = ""
  return sentence.capitalize

end


# 6. sentence_maker refactored solution

#Put a period with the last word in the array, use join to combine the words in the array with a space, then capitalize the first letter in the sentence.

def sentence_maker(array)
  array.last << "."
  sentence = array.join(" ").capitalize
end
