# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  return list_of_words[0].to_s if list_of_words.length == 1
  smallest_word(list_of_words)
#  smallest = list_of_words[0]
#  list_of_words.each do |word|
#    smallest = word if word.length < smallest.length
#  end
# return smallest
end

def smallest_word(array)
  smallest = array[0]
  array.each do |word|
    smallest = word if word.length < smallest.length
  end
  return smallest
end