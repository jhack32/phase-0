# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  if list_of_nums.length == 1
    return list_of_nums[-1].to_i
  elsif list_of_nums.length > 1
    list_of_nums.sort!
    smallest = list_of_nums[0]
  end
  return smallest
# while_loop(list_of_nums)
#  each_loop(list_of_nums)
#  until_loop(list_of_nums)
end

#solved using WHILE loop
def while_loop(array)
  num = array[0]
  while array.length > 1
    num1 = array.pop
    if num > num1
      num = num1
    end
  end
  return num
end

#solved using a EACH loop
def each_loop(array)
  num1 = array[0]
  array.each do |num|
    num1 = num if num1 > num
  end
  return num1
end

#solved using until loop
def until_loop(array)
  num1 = array[0]
  until array.empty?
    num2 = array.shift
    if num1 > num2
     num1 = num2
    end
  end
  return num1
end
