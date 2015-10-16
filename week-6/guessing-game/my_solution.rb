# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Number
# Output: low/high, whether or not the answer was guessed.
# Steps:
=begin
define a method called guess which takes an number input
  create instance variable (recent_guess) equal to input
  IF input is higher than answer
    then return :high
  ELSE IF input is lower than the answer
    then return :low
  ELSE
    return :correct
  END the conditional statement
END the method
define method called solved?
  IF recent_guess is :correct then return true
  ELSE return false
END the method
=end


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  # Make sure you define the other required methods, too
  def guess(num)
    @recent_guess = num
    if @recent_guess > @answer
      @recent_guess = :high
    elsif @recent_guess < @answer
      @recent_guess = :low
    else
      @recent_guess = :correct
    end
  end

  def solved?
    @recent_guess == :correct ? true : false
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
    if num > @answer
      @recent_guess = :high
    elsif num < @answer
      @recent_guess = :low
    else
      @recent_guess = :correct
    end
  end

  def solved?
    @recent_guess == :correct ? true : false
  end
end




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Real-world objects has certain functions just like a class that has instance variables/methods. Methods will be the things we're able to do with the object. Real-world objects like knives can cut things and that could be considered a method. Instance variables are the attributes. It's how sharp the knife or the attributes of the knife. Instance variables in a program are the values/strings/symbols given to it that are used by the methods.

When should you use instance variables? What do they do for you?

You should use instance variables when you want to reuse that variable in other methods in the class. It could be re-used in other methods if you wanted to. An example would be in this challenge, we wanted to have the method "solved?" to see whether or not the guess that the person previously made was correct or not. We could set an instance variable in our guess method to store whether or not the person guessed the number correctly and then the solved? method can return if they were correct or not if they called the solved? method.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is the order the program runs in. For conditional statements, it will run through the statement in order. So, if it fit one of the criteria already, it will dismiss the ones below it. It'll just run the code without going through the rest of the statement. I didn't have any trouble using it in this challenge.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

I think the code requires us to return symbols because it's quicker/efficient and so the object id value won't change everytime we run it. Symbols have the same object ID everytime whereas a String doesn't. The String's object ID changes every time. Symbols are the same throughout the entire program.

=end