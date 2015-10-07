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



# 1. Initial Solution

def separate_comma(number)
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

# 2. Refactored Solution
#used multiple built-in methods (to_s, reverse, gsub)
def separate_comma(number)
   p new_num = number.to_s.reverse.gsub(/\d{3}(?=\d)/) {|n| n << "," }.reverse
end
=begin
Explanation of what i did:
I saw my initial solution and thought there had to be an simpler way. I had to convert my number into a string and reverse it so that it would add commas in there correctly. When i reverse it, in a way, I'll be adding commas from the end to the front. Then, i remember reading up on gsub and looked more into it. The example I used as a reference was:
"hello".gsub(/./) {|s| s.ord.to_s + ' '}
After figuring out the regex I had to use to find the correct placement, I just added the block of code that would add a comma to every third number, then reversed it back. The d{3} requires 3 digits, and then (?= requires something after it. The \d is any digit, so it will require a digit after the 3 digits to run the block. Then I will reverse it to put the numbers back in its original place.
=end

# 3. Reflection