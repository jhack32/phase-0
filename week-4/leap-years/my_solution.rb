# Leap Years

# I worked on this challenge [Jack Huang with Jon Chen].


# Your Solution Below

def leap_year?(year)
  return (year % 4 == 0 && year % 100 !=0) || year % 400 == 0 ? true : false
  #if (year % 4 == 0 && year % 100 !=0) || year % 400 == 0
   # true
  #else
   # false
  #end
end