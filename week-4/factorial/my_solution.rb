# Factorial

# I worked on this challenge [Jack Huang with David Roberts ].


# Your Solution Below
def factorial(number)
  # Your code goes here
  if number == 0
    return 1
  elsif number == 1
    return 1
  end
  n = 1
  while number > 1
    n *= number
    number -= 1
  end
  return n
end

p factorial(10)