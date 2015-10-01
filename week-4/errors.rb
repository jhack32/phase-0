# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => The error is on line 170
# 3. What is the type of error message?
# => syntax error, unexpected end of input.
# 4. What additional information does the interpreter provide about this type of error?
# => it is expecting an end keyword.
# 5. Where is the error in the code?
# => Ruby is telling me that it's missing an end. I need to put an end after the puts for the cartman_hates(thing) method.
# 6. Why did the interpreter give you this error?
# => The while loop did not end so Ruby is telling me to put an end keyword at the end of the file.

# --- error -------------------------------------------------------

south_park = "Hello"

# 1. What is the line number where the error occurs?
# => Line 36
# 2. What is the type of error message?
# => The type of error message is undefined local variable/method 'south_park'
# 3. What additional information does the interpreter provide about this type of error?
# => None.
# 4. Where is the error in the code?
# => The error is on line 36. I need south_park to equal to something.
# 5. Why did the interpreter give you this error?
# => south_park is a local variable, so it doesn't return nil. Something needs to be assigned to the local variable.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# => Line 51
# 2. What is the type of error message?
# => The type of error message is undefined method
# 3. What additional information does the interpreter provide about this type of error?
# => It's telling us it's a undefined method for main:Object. No method error.
# 4. Where is the error in the code?
# => It needs to be a method so it's missing def and end.
# 5. Why did the interpreter give you this error?
# => It's not considered a local variable because it has the parentheses and assumes it's supposed to be a method but it's not correctly defined as a method which gives the error.

# --- error -------------------------------------------------------

def cartmans_phrase(input)
  puts "I'm not fat; I'm big-boned!"
  puts input
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => Line 67
# 2. What is the type of error message?
# => It's giving us an Argument error (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# => It's telling us that we are inputing something to the method but the method doesn't take any inputs.
# 4. Where is the error in the code?
# => The error is in line 67 after cartmans_phrase. It's missing parentheses that will take an input
# 5. Why did the interpreter give you this error?
# => It gave us this error because when we called the method, we added parentheses along with some text. The method itself doesn't take any inputs when called though.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("F*** you!")

# 1. What is the line number where the error occurs?
# => The error is on line 87.
# 2. What is the type of error message?
# => It's an argument error but a 0 for 1 argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of argument (0 for 1)
# 4. Where is the error in the code?
# =>The error is when the method is called. It's on line 91. It requires an argument.
# 5. Why did the interpreter give you this error?
# => It gave us this error because the method 'cartman_says' requires an argument when called. On line 91, when cartman_says is called, there's no argument with it.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Earyoming")

# 1. What is the line number where the error occurs?
# => The error is on line 108.
# 2. What is the type of error message?
# => The type of error message is argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => The number of wrong arguments is 1 for 2.
# 4. Where is the error in the code?
# => The error is when the method was called on line 112.
# 5. Why did the interpreter give you this error?
# => The interpreter gave us this error because the method requires two arguments. When it is called on line 112, only one argument was given. If we add another argument, then it will fix the error.

# --- error -------------------------------------------------------

5 * "Respect my authoritay!".to_i

# 1. What is the line number where the error occurs?
# => Line 27
# 2. What is the type of error message?
# => TypeError is the type of error message.
# 3. What additional information does the interpreter provide about this type of error?
# => The string cannot be coerced into Fixnum. It can't be computed because it's a string and a integer.
# 4. Where is the error in the code?
# => The error is on line 127. If i add a .to_i to the string, it will fix it.
# 5. Why did the interpreter give you this error?
# => It gave us this error because a string and a number cannot be computed. This means that using addition, subtraction, multiplication, division or any computation symbols will give us an error unless the string or the integer is converted to be the same. So, they both have to be integers/floats or strings.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# => Line 142
# 2. What is the type of error message?
# =>The error is Zero division error.
# 3. What additional information does the interpreter provide about this type of error?
# => It's telling us that it is from line 142 and dividing 20 by 0 is the issue.
# 4. Where is the error in the code?
# => The error is after the variable (amount_of_kfc_left). It has to do with 20 / 0. After the 20. (dividing by 0)
# 5. Why did the interpreter give you this error?
# => It gives us the error because 20 divided by 0 is undefined. It won't give us a value.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => Line 158
# 2. What is the type of error message?
# => It's a load error.
# 3. What additional information does the interpreter provide about this type of error?
# =>The file can't be loaded. it seems like the file may not exist in the directory.
# 4. Where is the error in the code?
# => The error is that there is no cartmans_essay.md file in the directory.
# 5. Why did the interpreter give you this error?
# => It gave us the error because it cannot load the file cartmans_essay.md. It does not exist in the same directory as the ruby file.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# I enjoyed figuring out the errors and deciphering them. I feel like it will help me in the future when I need to debug. I had some trouble explaining why certain errors occurred but that led me to do a google search and understand it a lot better.

=begin
Which error was the most difficult to read?

The most difficult error to read was probably the cartman_hates(thing) method on line 13. I was confused when it referred me to line 170 but understood it was because i was missing an end which will lead me to go to the end of the document. I had to read the method carefully and saw that the while loop was missing an end.

How did you figure out what the issue with the error was?

I looked at the where the error occured then what kind of error. After that i looked at the additional information, so where the error was caused. So if a method was called, the error message would point me to where the method was created, but it will also list where the method was called. I looked at both of these to see where it is.

Were you able to determine why each error message happened based on the code?

I was able to determine why each error message happened for most of the errors. I had some trouble with the line 13 error, where it told me the error occurred on the end of the page.

When you encounter errors in your future code, what process will you follow to help you debug?

I'll start from the beginning to the end of the error message. Starting from the line of the error, understand what the error is, then look at the additional information provided and check those lines.

=end