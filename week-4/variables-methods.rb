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