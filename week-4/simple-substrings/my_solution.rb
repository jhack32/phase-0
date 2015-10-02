# Simple Substrings

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def welcome(address)
  if address.include? "CA"
    return "Welcome to California"
  elsif address.include? "cali"
    return "You should move to California"
  end
end