#Pseudocode for GPS 2.2

#define a method for new list with a hash argument (1 argument)
#create local variable (list) equal to hash
#END the method

#define a method to add key and quantity to the hash (3 arguments)
#add key (itemname) giving it a quantity of 3
#END the method

#define a method to remove a item from hash (2 argument)
#remove itemname
#END the method

#define a method to update quantities for our hash (3 arguments)
#access the key with itemname changing the quantity new quantity
#END method

#define a method to print the hash (1 argument)
#print the local variable (list)
#END method

def create_list (name)
  name = Hash.new
end

def add_item (hash, key, value)
  hash.has_key?(key) ? hash[key] += value : hash[key] = value
end

def remove_item (hash, key)
  hash.has_key?(key) ? hash.delete(key) : (return p key + " does not exist")
end

def new_quantity (hash, key, value)
  hash.has_key?(key) ? hash[key] = value : (return p key + " does not exist")
end

def print_list (hash)
  hash.each {|key, value| p key + " - " + value.to_s}
end



list = create_list("list")

add_item(list, "Lemonade", 2)
add_item(list, "Tomatoes", 3)
add_item(list, "Onions", 1)
add_item(list, "Ice Cream", 4)

remove_item(list, "Lemonade")

new_quantity(list, "Ice Cream", 1)

print_list(list)

#Reflection/Questions
=begin

What did you learn about pseudocode from working on this challenge?

Pseudocode was very useful. It definitely made solving the challenge a lot easier. We were able to break down the problem into smaller problems and tackle them one by one.

What are the tradeoffs of using Arrays and Hashes for this challenge?

Hashes was better for this challenge because we were able to relate quantities with the items. If we were to use an array, we would need to create multiple arrays within one big array, or one item would be equal to an array.

What does a method return?

A method returns the last code that was ran.
def method
  name = "Hello"
end

This will return name.

What kind of things can you pass into methods as arguments?

You can pass anything into methods as arguments. Strings, numbers, other methods.

How can you pass information between methods?

You could pass information by calling the variable in the argument. If we had a array made in one method, we can retrieve the array from a different method by having it in the argument.

def var(array, x)
  array = [x]
end
def var2(a)
  puts a
end

We can retrieve the array we created by putting the array's name we made into the var2 method.

What concepts were solidified in this challenge, and what concepts are still confusing?

The difference between using a hash and an array was solidified in this challenge. Now that i've actually used both, i have a better understanding of which to use and when to use them.

=end
