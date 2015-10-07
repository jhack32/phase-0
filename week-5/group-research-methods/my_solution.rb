# Research Methods

# I spent [1] hour on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.reject { |i| !i.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  source.reject { |k, v| v != thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.
#-----------------------------------------------------------
# reject: returns an array or hash consisting of entries for which the block returns false
# array.reject { |item| (conditional statement)}
# hash.reject { |key, value| (conditional statement)}
# ---------------------------------------------------
# include?: returns true if the array contains the parameter.
# array.include(arg)

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.collect! { |x| (x.is_a? Integer) ? (x + thing_to_modify) : x }
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |key, value| source[key] += thing_to_modify }
end

# Identify and describe the Ruby method(s) you implemented.

# For the ARRAY modificaton, I used a collect! method followed by an if/else (used ternary) statement. The collect! method is destructive. It runs the block of code for every element and replaces the element with the new value that's created by the block. We have the if/else statement to make sure that if the element is an integer, it will add thing_to_modify to it, and if not, it'll just return the element.

# For the HASH modification, I used an each method and set two arguments (key, value) so that i can update the age. So it'll add thing_to_modify with the current value in the hash.
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#