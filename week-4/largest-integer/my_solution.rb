# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
  return list_of_nums[0] if list_of_nums.length == 1
  sort_array_return_highest(list_of_nums)
#  while_loop(list_of_nums)
#  until_loop(list_of_nums)

end

def sort_array_return_highest(array)
  array.sort!
  return array[-1]
end

#solved using while loop
def while_loop(array)
  largest = array[0]
  while !array.empty?
    num2 = array.pop
    if largest < num2
      largest = num2
    end
  end
  return largest
end

#solved with an until loop
def until_loop(array)
  largest = array[0]
  until array.empty?
    num = array.pop
    if largest < num
      largest = num
    end
  end
  return largest
end
