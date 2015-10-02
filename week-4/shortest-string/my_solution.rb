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
#  until_loop(list_of_words)
#  for_loop(list_of_words)
#  smallest = list_of_words[0]
#  list_of_words.each do |word|
#    smallest = word if word.length < smallest.length
#  end
# return smallest
end

#solved with each loop
def smallest_word(array)
  smallest = array[0]
  array.each do |word|
    smallest = word if word.length < smallest.length
  end
  return smallest
end

#solved with until loop
def until_loop(array)
  shortest = array[0]
  until array.empty?
   word = array.shift
   shortest = word if shortest.length > word.length
  end
  return shortest
end

#solved with for loop
def for_loop(array)
  shortest = array[0]
  for array in array[0..array.length]
    shortest = array if shortest.length > array.length
  end
  return shortest
end