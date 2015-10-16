# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Aaron Tsai].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: True/false
# Steps:
# 1. Split up integer and put each integer into a single array
# 2. Iterate through the array and double every other integer using a counter.
# 3. Break apart double digits for anything greater than 9, split and add, otherwise just add
# 4. check the sum to see if it is divisible by 10, if so then return true. Otherwise return false.

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize (num)
    @num = num
    raise ArgumentError if num.to_s.length != 16
  end

  def check_card
    num_array = []
    num_array = @num.to_s.split(//)
    counter = 2
    num_array.map! do |n|
      if counter % 2 == 0
        n = n.to_i * 2
      else
        n
     end
      counter += 1
      n
    end
    sum = 0
    num_array.map! do |num|
      if num.to_i < 10
        sum += num.to_i
      else
        over_9 = num.to_s.split(//)
        sum += (over_9[0].to_i + over_9[1].to_i)
      end
    end
    if sum % 10 == 0
      true
    else
      false
    end
  end

end


# Refactored Solution

class CreditCard

  def initialize (num)
    @num = num
    raise ArgumentError if num.to_s.length != 16
  end

  def check_card
    @num_array = @num.to_s.split(//)
    double_every_other
    split_over_10_then_add
    @sum % 10 == 0 ? true : false
  end

  def double_every_other
    counter = 2
    @num_array.map! do |n|
      n = n.to_i * 2 if (counter % 2 == 0)
      counter += 1
      n
    end
  end

  def split_over_10_then_add
    @sum = 0
    @num_array.map! do |num|
      if num.to_i < 10
        @sum += num.to_i
      else
        over_9 = num.to_s.split(//)
        @sum += (over_9[0].to_i + over_9[1].to_i)
      end
    end
  end
end



# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?

One of the parts we got stuck on was in our first map iteration. At the end of the iteration, it wasn't returning the values it should. After some debugging, we realized that we needed to set it equal to n (causing it to be destructive).

What new methods did you find to help you when you refactored?

In our refactored solution, we reused the same methods but had it organized a little better than our initial solution. We separated certain tasks into different methods. We also cut down what we didn't need like the num_array = []. We also used ternary operators for one of the conditional statements.

What concepts or learnings were you able to solidify in this challenge?

I've learned more about the map usage and how Classes work. I've never really used map before but after using it in this challenge, I feel a lot more comfortable with it.

=end