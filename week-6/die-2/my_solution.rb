# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: The number of strings in an array (sides) OR a random string from the array (roll)
# Steps:
=begin
create a class
  create a method that will take in the array when creating a new class
  end the method
  create sides method
    get array and measure the length
    return the length
  end the method
  create a roll method
    get the array and scramble the array
    return the last string
  end the method
=end


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError, "Please input an array with more than 1 string" if (@labels == [])
  end

  def sides
    @labels.length
  end

  def roll
    @labels.shuffle!
    @labels.last
  end
end

# Refactored Solution

class Die
 def initialize(labels)
    @labels = labels
    raise ArgumentError, "Please enter a non-empty array" if (@labels.empty?)
 end

 def sides
   @labels.length
 end

 def roll
    @labels.shuffle.last
 end
end



# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

I didn't need to change much logic. For the sides method, we just needed to calculate the length of the amount of sides using the .length method. In our first die class challenge, all we needed to do was call the sides itself because it is the input when creating a new class. The roll method is different from the first challenge. In the first challenge, we could just do a rand method with 1..@sides, which will give a random number from 1 to the number of sides that was inputted. In this challenge, we were given an input of strings instead of numbers. We can't use rand because we have an array of strings so I implemented .shuffle (randomizes the string) and .last (the last string). The shuffle will mix up the array and then last will take the last string.

What does this exercise teach you about making code that is easily changeable or modifiable?

It's good to make code that's easily changeable/modifiable. You can always go back and add more features or change up how you want the method to work without really effecting the other methods.

What new methods did you learn when working on this challenge, if any?

I didn't learn any new methods but I realized that shuffle wasn't destructive by itself, it needs a exclamation point(!).

What concepts about classes were you able to solidify in this challenge?

The usage of classes, and attr_reader. Attr_reader worked in the first Die class challenge because we were already given an integer that will be the amount of sides we should have. In this challenge, we can't call attr_reader and have it return the # of sides because we have an array with strings as an input instead of a single integer. Classes is really like a blueprint. The Die class contains everything that you can do with a Die as long as you have a valid input when you make the Die.

=end