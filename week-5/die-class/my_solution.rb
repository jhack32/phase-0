# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: sides (1 argument)
# Output: a number (number of sides/random side #)
# Steps:
=begin
in the initialize
  store sides as instance variables
  create an Argument Error when the side is less than 1
end the initialize
in the sides class
  store the instance variable inside the sides method. return the value when called
end the sides class
in the roll method
  choose a random number from 1 to the number of sides the Die has
end the method
=end


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError if sides < 1
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end

end



# 3. Refactored Solution
class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError, "The sides must be greater than 1" if sides < 1
  end
attr_reader :sides
  def roll
    rand(1..@sides)
  end
end


# 4. Reflection
=begin
What is an ArgumentError and why would you use one?

It gives an error to the user when the argument is wrong but there's no error in ruby that'll give us an error. If we hadn't put an ArgumentError in the initialize for sides less than 1, it will take sides that are less than 1, which is not what we want. We want sides over 1 so we would raise an ArgumentError everytime the sides input was less than 1.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

raise ArgumentError was a new one that I did not know. I had to go through google and figure out how to do it and what else I can do with it. At first, I thought it'd be something like return ArgumentError, but found out it was raise ArgumentError and then can be followed with a string afterwards if we wanted to put one.

What is a Ruby class?

A ruby class is like a house that contains multiple people (methods). It's has multiple methods that perform certain tasks that are within the class category. If I created a Board class, the methods within the class would contain things that may create the board. The Die class we just created contained the amount of sides we wanted the die to have, and a roll. It's everything related to a Die.

Why would you use a Ruby class?

A Ruby class would be used for structure. It helps with organizing your code. If you made a game with multiple characters, you can create multiple classes that would have different methods (abilities) for each of the characters.

What is the difference between a local variable and an instance variable?

Instance variables are scoped within the class. They are like regular variables but they are declared with an @ symbol. They can be used throughout the class. They are also created when the object is created. A local variable does not require a @ symbol and is only used within the method (or wherever it was created) it was created.

Where can an instance variable be used?

An instance variable can be used throughout the same class it was created. If it was created in a method of a Person class, it can be used throughout the Person class.

=end