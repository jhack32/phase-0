# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(grade)
  if grade_eq_a(grade)
#  if grade >= 90
    return "A"
  elsif grade_eq_b(grade)
#  elsif grade >= 80
    return "B"
  elsif grade_eq_c(grade)
#  elsif grade >= 70
    return "C"
  elsif grade_eq_d(grade)
#  elsif grade >= 60
    return "D"
  else
    return "F"
  end
end

# methods below used for making changes easier
def grade_eq_a(grade)
  grade >= 90
end

def grade_eq_b(grade)
  grade >= 80
end

def grade_eq_c(grade)
  grade >= 70
end

def grade_eq_d(grade)
  grade >= 60
end