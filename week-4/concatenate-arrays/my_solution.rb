# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  return Array.new if array_1.empty? && array_2.empty?
  combine_array(array_1, array_2)
# new_array = array_1 + array_2
# return new_array
end

#created new method to combine the array
def combine_array(array1, array2)
  new_array = array1 + array2
end