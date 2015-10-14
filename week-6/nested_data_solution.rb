# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[1][1][2][0]
def array(arr)
  arr.flatten.each do |element|
    if element == "FORE"
      p element
    end
  end
end
array(array)


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[:outer][:inner]["almost"][3]

def find_element(h)
  h.each do |key, value|
    if value.is_a? Hash
      find_element(h[key])
    else
      puts value
    end
  end
end
find_element(hash)

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[:array][1][:hash]
def find_element(h)
  h.each do |key, value|
    if value.is_a? Array
      p value[1][:hash]
    end
  end
end
find_element(nested_data)


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def array(arr)
#  arr = arr.flat_map { |x| x }
  arr.flat_map {|x| x}.collect! { |x| x + 5 }
end
p array(number_array)


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
def string(arr)
  arr.flatten.each {|x| x << "ly"}
end
p string(startup_names)

#Reflection
=begin
What are some general rules you can apply to nested arrays?

You can flatten the array so you have one array instead of sub-arrays. You could also create a recursion to find the element you want inside an array.

What are some ways you can iterate over nested arrays?

You can flatten them and then use an iteration (each). You could also do a recursion as well and break the recursion when you find what you wanted to in the array. You can also have multiple iterations. So you can have each methods within an each method, but it gets confusing.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used flatten a lot and flat_map which was a new method. We weren't familiar with flat_map but learned how to use it through Ruby docs. We also used the each iteration on pretty much all of the solutions we came up with. We decided to use flat_map/flatten because it makes going through the array and searching for a string/number a lot easier. It's easier than creating multiple loops in a method. We also used conditional (if/else) statements as well in the each loops.

=end