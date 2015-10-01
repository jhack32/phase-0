#Release 1

## Answer the following questions

- What does puts do?

puts stands for "put string". It prints the output and inserts a new line. It also returns nil.

- What is an integer? What is a float?

An integer is a whole number. They're numbers without decimals. Examples would be 1,2,3,4. Float numbers on the other hand are numbers that include decimals. They could be 1.11 or something along those lines.

- What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Integer division outputs integer numbers while float division outputs floating numbers. So if we were to do 1.0 / 1.0, the output would be 1.0. That was a float division. For someone who doesn't know anything about programming, I would explain what float and integers are (which are decimal/whole numbers respectively). When we divide integers (whole numbers), the computer will return a whole number even if we did 1 / 2. If we were to use floating numbers (decimals) we would get an output with a decimal. For example, 1 / 2 would output 0.5

#Release 2

```
puts 24 * 365
puts 60 * 24 * 365 * 10
```

#Reflect

- How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby is very straight forward. So if i were to give it a integer (whole) number. It would return a whole number. Ruby also won't allow integers to be mixed with strings. For example, (puts "hello" + 21) would output an error. Numbers can only be added, multiplied, divided with numbers and not strings. Strings could be added if they are with other strings though. So, if we were to do "hello" + "you", it would output "Hello you".

- What is the difference between integers and floats?

The difference is the decimal. Integers are whole numbers (1,2,3,4) and floats are decimals (1.1, 1.00, 2.34, etc)

- What is the difference between integer and float division?

Integer division outputs an integer. This means that integers (whole numbers) that are being divided by another integer (whole number) will have an output of a whole number (integer). An example would be 1 + 1 = 2. Float (decimal) division outputs floats (decimal number). Example would be 1.0 + 1.0 = 2.0.

- What are strings? Why and when would you use them?

Strings are letters/words/text. They could be used to ask the user a question, be added with other strings, provide information and match an input, and many more. Strings are useful for outputting information as well.

- What are local variables? Why and when would you use them?

A local variable is a variable that is not global or an instance variable. So it would not contain @/$ in the beginning of the variable. It would not be @method/$method. A local variable would look like "method = 4". They begin with a lowercase letter. It's only located inside a method, block, class, module.
An example is

```
def method_one
  local_variable = 12
  puts local_variable
end
```

the local_variable is a local variable to method_one.

- How was this challenge? Did you get a good review of some of the basics?

This was a good challenge. It was definitely a good review. I had to do some research on local variables and some other stuff. It helped with my understanding of what a local variable is and more.

#Links to 4.2.1 - 4.2.2 - 4.2.3

- 4.2.1

https://github.com/jhack32/phase-0/blob/master/week-4/defining-variables.rb

- 4.2.2

https://github.com/jhack32/phase-0/blob/master/week-4/simple-string.rb

- 4.2.3

https://github.com/jhack32/phase-0/blob/master/week-4/basic-math.rb

