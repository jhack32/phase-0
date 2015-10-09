# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Numbers
# What is the output? (i.e. What should the code return?) The number with a comma in the correct place
# What are the steps needed to solve the problem?
#
# create a method (separate_comma) that takes one argument
# create a new variable that will split the argument
#   create a conditional statement
#     add the commas in the correct place
#   end the statement
# END the method

=begin
create a method that takes an argument
split the number into an individual item in an array
  iterate through the argument
    add a comma after every 3rd number
  end the iteration
  return the number with the commas
end the method
=end


# 1. Initial Solution

def separate_comma(number)
  new_array = number.to_s.reverse.split("")
  count = 0
  new_array.each do |x|
    count += 1
    if count >= 4
      x << "," unless count == 3 || count == 5 || count == 6 || count > 7
    end
  end
 new_array.reverse.join
end
=begin
  new_num = number.to_s.split(//)
  if number < 1000
    number
  elsif number > 1000 && number < 9999
    new_num[0] << ","
  elsif number > 10000 && number < 99999
    new_num[1] << ","
  elsif number > 100000 && number < 999999
    new_num[-4] << ","
  elsif number > 1000000 && number < 9999999
    new_num[-4] << ","
    new_num[0] << ","
  elsif number > 10000000 && number < 99999999
    new_num[-4] << ","
    new_num[1] << ","
  end
  p new_num.join
end
=end

# 2. Refactored Solution
def separate_comma(number)
  number.to_s.reverse.split("").each_with_index { |x,y| x << "," if y == 3 || y == 6 }.reverse.join
end

=begin
#used multiple built-in methods (to_s, reverse, gsub)

def separate_comma(number)
   p new_num = number.to_s.reverse.gsub(/\d{3}(?=\d)/) {|n| n << "," }.reverse
end

Explanation of what i did:
I converted the number into a string and reversed it so that it would add commas in there correctly. When i reverse it, in a way, I'll be adding commas from the end to the front. Then, i remember reading up on gsub and looked more into it. The example I used as a reference was:
"hello".gsub(/./) {|s| s.ord.to_s + ' '}
After figuring out the regex I had to use to find the correct placement, I just added the block of code that would add a comma to every third number, then reversed it back. The d{3} requires 3 digits, and then (?= requires something after it. The \d is any digit, so it will require a digit after the 3 digits to run the block. Then I will reverse it to put the numbers back in its original place.

# 3. Reflection

>What was your process for breaking the problem down? What different approaches did you consider?

I needed to rewrite my pseudocode. The first time around, my pseudocode wasn't that good. I realized that i needed to break down the problem into smaller parts. My initial pseudocode was very vague when I looked back on it. Plus, it was incorrect for this challenge because I'm supposed to use an iteration.

>Was your pseudocode effective in helping you build a successful initial solution?

Yes, it definitely helped me. I looked back at it frequently to figure out what I should do. It gave me a good start to the solution and helped me along the way.

>What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I had to convert the number into a string in order to separate it as an array. So i used .to_s/.reverse/.split so that when it's looping, it'll be from the end of the number to the front. Then, I used a each_with_index iteration to loop through the array, and add commas at a certain index. Finally, i reversed it back and joined the numbers together.

How did you initially iterate through the data structure?

I initially used an each iteration with conditional statements (if/unless).

Do you feel your refactored solution is more readable than your initial solution? Why?

I think the refactored solution is readable. It goes in order of what it's going. So on the number, it will convert it into a string, reverse it, split it into separate numbers, and iterate through it with indexes (adding commas in the 3rd and 6th index), then reverse it back to the original and finally joining it together. That's what I read when i looked through it.

=end