# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
create a loop that goes through the array (input)
  if the number is divisible by 15
    replace the number with FizzBuzz
  else if the number is divisible by 3
    replace the number with Fizz
  else if the number is divisible by 5
    replace the number with Buzz
  end the statements
end the loop

=end
# Initial Solution

def super_fizzbuzz(array)
  array.each_with_index do |x, index|
    if x % 15 == 0
      array[index] = "FizzBuzz"
    elsif x % 3 == 0
      array[index] = "Fizz"
    elsif x % 5 == 0
      array[index] = "Buzz"
    end
  end
end



# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |x|
    if x % 15 == 0
      "FizzBuzz"
    elsif x % 3 == 0
      "Fizz"
    elsif x % 5 == 0
      "Buzz"
    else
      x
    end
  end
end


# Reflection
=begin
What concepts did you review or learn in this challenge?

I reviewed the each_with_index and map methods in this challenge.

What is still confusing to you about Ruby?

I haven't ran into anything confusing yet. I do want to become more familiar with using multiple classes though.

What are you going to study to get more prepared for Phase 1?

I am definitely going to try to get more familiar with JS/SQL before getting on campus and get more familiar with Ruby. Accessing nested data structures is also another thing I'll definitely be looking into as well.

=end