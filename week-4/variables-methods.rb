# Full name greeting

puts "What's your first name?"
first_name = gets.chomp

puts "What's your middle name?"
middle_name = gets.chomp

puts "What's your last name?"
last_name = gets.chomp

puts "Hello, #{first_name} #{middle_name} #{last_name}"

#Bigger, better favorite number

puts "What is your favorite number?"
fav_num = gets.chomp
better_num = fav_num.to_i + 1
puts "Here's a bigger, better number: #{better_num}"


=begin
How do you define a local variable?

A local variable is a variable that is in the scope of class, method, module. It acts as a declaration. They don't have a nil class like a global or instance variable. A local variable could be something like var1 = "Hello" or var2 = 1.

How do you define a method?

we start off by writing "def" then the method name which is started with a lowercase. Example would be:

def filename(input)
  puts input
end

What is the difference between a local variable and a method?

A local variable is a declaration. It contains a value/string that can be inside a method, class or module. A method performs something. It may get an input or anything of the sort.

How do you run a ruby program from the command line?

We run a ruby program from command line by typing "ruby filename.rb"

How do you run an RSpec file from the command line?

We run a RSpec file by typing rspec "filename.rb"

What was confusing about this material? What made sense?

It all seems pretty straight-forward to me. I think Ruby is very straight forward. For example, the gets will take the input but also takes the empty line (enter) which is why when we add .chomps, it will get rid of the empty line.


URLs for the sub-challenges:

4.3.1
https://github.com/jhack32/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2
https://github.com/jhack32/phase-0/blob/master/week-4/math/my_solution.rb

=end