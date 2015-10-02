# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  return list_of_words[0] if list_of_words.length == 1
  longest_word_while_loop(list_of_words)
#  longest_word_each_loop(list_of_words)
end

# method below uses a while loop
def longest_word_while_loop(array)
  longest = array[0]
  while array.length > 1
    word = array.pop
    if word.length > longest.length
      longest = word
    end
  end
  return longest
end

# Method below uses a each loop.
def longest_word_each_loop(array)
  longest = array[0]
  array.each do |word|
    longest = word if word.length > longest.length
  end
  return longest
end