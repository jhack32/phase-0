# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  return 0 if list_of_integers.empty? || upper_bound < lower_bound
  return list_of_integers.length if lower_bound == upper_bound
  each_method(list_of_integers, lower_bound, upper_bound)
end

def each_method(array, lower, upper)
  count = 0
  array.each do |integer|
   count += 1 if integer <= upper && integer >= lower
  end
  return count
end