# I worked on this challenge [Kevin Mark and Jack Huang].
# This challenge took me [#] hours.

# Pseudocode
=begin
create a method that takes a number (argument)
  loop through the sequence
    declare three variables (a,b,c)
    check to see whether variable is equal to argument
    keep updating the variables
    stop when one of the variables is greater than the argument
  end the loop
end the method
=end
# Initial Solution

def is_fibonacci?(num)
  a=0, b=1, c=1
  while (c <= num)
    if c == num
      return true
    end
    a = b
    b = c
    c = a + b
  end
  return false
end



# Refactored Solution
def is_fibonacci?(num)
  a=0, b=1, c=1
  while (c <= num)
    return true if c == num
    a = b; b = c; c = a + b
  end
  false
end





# Reflection