# Reverse Words


# I worked on this challenge [by Kevin Mark and Jack Huang].
# This challenge took me [#] hours.

# Pseudocode
# Input: Sentence (string)
# Output: Sentence reversed (string)
# Declare variable to hold array of words
# Split sentence into array of words and reverse
# LOOP through each word
  # Reverse the word
# Join the array of words back into a string
# Return string of sentence reversed



# Initial Solution
def reverse_words(sentence)
  array = []
  array = sentence.split(" ")
  array.each do |x|
    x.reverse!
  end
  array.join(" ")
end


# Refactored Solution
def reverse_words(sentence)
  sentence.split(" ").each{|word| word.reverse!}.join(" ")
end




# Reflection