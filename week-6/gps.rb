# Your Names
# 1) Jack Huang
# 2) Daniel Woznicki

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, ingredient_quantity)
  #menu is the items and quantity we need to make for one.
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #will check whether or not the item is in the menu.
  raise ArgumentError, "#{item_to_make} is not a valid input" unless menu.include?(item_to_make)
  # error_counter will raise ArgumentError if item to make is not in the library.
  #serving_size will give us the amount of item to make
  serving_size = menu[item_to_make]
  #serving_size_mod will give us the leftover amount of ingredient we get (if any)
  remainder = ingredient_quantity % serving_size
  if remainder < 5
    suggested_items = "You should make #{remainder} cookies."
  elsif remainder < 6
    suggested_items = "You should make #{remainder/5} cake."
  else
    suggested_items = "You should make #{remainder/5} cake and 1 cookie."
  end
  output = "Calculations complete: Make #{ingredient_quantity/serving_size} of #{item_to_make}"
  remainder == 0 ? output : "#{output} and you have #{remainder} leftover ingredients. #{suggested_items}"
  # outputs how many items were made and how many leftover ingredients there are.
end

  p serving_size_calc("pie", 7)
  p serving_size_calc("pie", 12)
  p serving_size_calc("cake", 5)
  p serving_size_calc("cake", 7)
  p serving_size_calc("cookie", 1)
  p serving_size_calc("cookie", 10)
  p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

I learned that it's not good practice to use ternary operators when you have long if and else statements. It should be used for shorter if/elses. It's also good to make your code easier to read/debug when you have good names for the variables/conditional statements.

Did you learn any new methods? What did you learn about them?

I did not learn any new methods but I did get some clarification on some of the methods we used. The each iteration that was used in the initial solution had the word food used when library was being called (library[food]) which returns nil.

What did you learn about accessing data in hashes?

I learned that when accessing data in hashes, you use the key to call it but when you iterate through hashes without having two arguments, it will return nil.

library.each do |food|
  library[food]
end

The code above will return nil. but if you did (library.each do |food,value|) it will return the value when you do library[food].

What concepts were solidified when working through this challenge?

The usage of ArgumentError was solidfied when I was working through this challenge along with how to make the code more readable and DRY.
