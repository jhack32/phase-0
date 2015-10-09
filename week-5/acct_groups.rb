=begin
Pseudocode:
create a method that will take an array with the names of people (1 argument)
  create a hash that will have an array as values
  set count as 0. (to use as keys)
  create a variable that will have an array of the amount of keys we should have for storing 5 names in every one.
  iterate through the variable with the amt of keys
    add one to the count
    iterate through the key array (5 times) and shuffle and pop the list into the hash with the count as the key.
  end the iteration
end the method

=end
copperheads = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jefferey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

#Initial solution
def create_acct_group(arr)
  acct_group = Hash.new { |hash, key| hash[key] = [] }
  keys = Array.new(num_of_keys(arr))
  count_of_key = 0
  keys.each do |x|
    count_of_key += 1
    5.times { acct_group[count_of_key] << arr.shuffle!.pop }
  end
  acct_group
end

def amt_in_each_group(array, k)
  array.length / k.length
end

def num_of_keys(array)
  if (array.length % 5 == 0)
    key_arr = array.length / 5
  else
    key_arr = (array.length / 3.0).ceil
  end
 return key_arr
end

#=begin
###################Refactor
def create_acct_group(arr)
  acct_group = Hash.new {|hash, key| hash[key] = [] }
  keys = Array.new(num_of_keys(arr))
  count_of_key = 0
  loop_key = amt_in_each_group(arr, keys) #Sets the amt of people in each group to a variable
  keys.each do
    count_of_key += 1
    shuffle_rm_item_loop(loop_key, arr, acct_group, count_of_key)
  end
  acct_group
end

#The loop that will run the shuffle and pop X amount of times
def shuffle_rm_item_loop(loop_k, arr, arr2, count)
  loop_k.times { arr2[count] << arr.shuffle!.pop }
end

#Calculates the amount that should be in each group
def amt_in_each_group(array, k)
  array.length / k.length
end

#Decides the number of keys we will need to create a correct amt of groups
def num_of_keys(array)
  if (array.length % 5 == 0)
    key_arr = array.length / 5
  else
    key_arr = (array.length / 3.0).ceil
  end
 return key_arr
end

#=end

p create_acct_group(copperheads)


# Reflection
=begin

What was the most interesting and most difficult part of this challenge?



Do you feel you are improving in your ability to write pseudocode and break the problem down?



Was your approach for automating this task a good solution? What could have made it even better?



What data structure did you decide to store the accountability groups in and why?



What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?



=end