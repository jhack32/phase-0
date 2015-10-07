=begin
# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?

define a method that takes in an array as an argument

# What is the output? (i.e. What should the code return?)

our output should return the number or string that occurs the most frequently

# What are the steps needed to solve the problem?

1. define method that takes in an array
2. we can define a hash
3. iterate through the array to push the array values into the hash
4. set the array values as a key, and add 1 to each key
5. output the key with the highest number

=end
# 1. Initial Solution

def mode(arr)
  h1 = Hash.new(0)
  arr.each { |x| h1[x] += 1 }
  output = []
  h1.each {|k, v| output << k if v == h1.values.max}
  return output
end

# 3. Refactored Solution

# we checked through ruby docs as well and experimented with other methods we believed could help us refactor our code.  But it did not work when we tried it.
# our initial solution seems to be pretty clean. We compared our answers to those on stack overflow and found that to output as an array our code was as clean as we could get it.

def mode(arr)
  hash = arr.inject(Hash.new(0)) {|h, v| h[v] += 1; h}
  output = []
  hash.each {|k, v| output << k if v == hash.values.max}
  return output
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

We decided to implement a hash because it would allow us to track the number of times it was present and link it to the number/string. We could also easily access which item was in the array X amount of times by calling the keys.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

I think it was around the same. We were able to break the problem down without any issues.


What issues/successes did you run into when translating your pseudocode to code?

One of the issue we probably had was for our last translation. In number 5 (output the key with the highest number), we should've broken it down a little more because that was where we had problems.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used each to iterate through the array and hash. We found parts of our refactor on stack overflow. We used the inject method we saw the person on SO use. By using the inject, we were able to create a new hash and input the key and values into it as well on one line.

=end