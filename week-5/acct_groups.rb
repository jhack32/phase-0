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
def shuffle_rm_item_loop(loop_k, array, group, count)
  loop_k.times { group[count] << array.shuffle!.pop }
end

#Calculates the amount that should be in each group
def amt_in_each_group(array, k)
  (array.length / k.length.to_f).ceil
end

#Decides the number of keys we will need to create a correct amt of groups. It only accounts for one-two drop outs. At two dropout, the last class will have 2 nils in it.
def num_of_keys(array)
  if (array.length % 5 == 0)
    key_arr = array.length / 5
  elsif array.length == 53
    key_arr = (array.length / 5.0).ceil
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

The most interesting part of the challenge was to remove a person and see how I would be able to add everyone into a group with more than one person. The most difficult was if two people dropped out of the program, then it will give us a

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Pseudocode is still giving me some trouble, but it's definitely helping. It's helping me understand what I need to break down and what I'm trying to do. I still have some trouble writing good pseudocode though, so it's something I will probably look into a little more.

Was your approach for automating this task a good solution? What could have made it even better?

I think it was good, if no more than 2 people drop out. I could make it even better by probably using a different iteration, and accounting for drop outs. I could probably also add a method or check in where it'll make sure every group has 3 or more people in it.

What data structure did you decide to store the accountability groups in and why?

I used a hash to store the accountability group. It allowed me to create numbers (keys) and store the names as values. It was easier to access and input the data. I created arrays for the values, so this would allow me to have multiple names inside.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I learned to break the initial solution down into multiple methods so that if i wanted to make some changes to something later on, I'd be able to go into that method and change it, rather than going to the solution itself and changing it up. I'm definitely going to revisit this challenge, and try to improve it before the end of the week.

=end