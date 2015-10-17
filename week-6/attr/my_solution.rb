#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name
  def initialize
    @name = "Jack"
  end

end


class Greetings
  def initialize
    @namedata = NameData.new
  end
  def hello
    puts "Hello #{@namedata.name}, How are you doing?"
  end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
>Release 1:
What are these methods doing?

Some of the methods in release 1 return the values in the initialize and the other methods change the values. There are what_is_age method which returns the original age value and change_my_age which changes the value with the input given to it.

How are they modifying or returning the value of instance variables?

They're returning the value of instance variables by calling it. In the methods that are returning the values, they just call the instance variable. It's something like @age, @name or @occupation. The methods that modify the instance variables are setting the original instance variables equal to the input given to the method. For example, in change_my_name=(new_name), the @name instance variable is equal to the input (new_name) which changes the value.

>Release 2:
What changed between the last release and this release?

The attr_reader was added onto release 2 and what_is_age method was taken out as well.

What was replaced?

The what_is_age method was replaced with an attr_reader :age.

Is this code simpler than the last?

Yes it is, but it could  be simpler.

>Release 3:
What changed between the last release and this release?

In release 3, attr_writer was added and the change_my_age method was removed. When changing the age, we don't have to do change_my_age anymore. Instead, we just called age and gave it a new value.

What was replaced?

The method change_my_age was replaced.

Is this code simpler than the last?

Yes, it's simpler than the last but the reader and writer could be combined into attr_accessor.

>Release 5:
What is a reader method?

A reader method allows you to call the instance variable and returns the value. An example would be the name variable. I was able to use attr_reader to get the value of name. It only returns the value, you cannot edit the value with reader.

What is a writer method?

The writer method allows you to edit the variable. If you apply attr_writer on an instance variable, you can call variable (ex: greet.name = "Example") and change the value of it.

What do the attr methods do for you?

It allows easy access to the variables. We don't have to create methods to get the value. We can also set certain values to be read-only/write-only or both. It gives us control.

Should you always use an accessor to cover your bases? Why or Why not?

I think we should use accessor when we want to edit and retrieve our variables. If we only want to edit it in certain situations, then we shouldn't use the accessor. It depends on the situation. Accessor can mess up your code so it depends whether or not you want to be able to write/read the variable throughout the code.

What is confusing to you about these methods?

Nothing at the moment, seems pretty straight-forward. attr_reader will allow us to read (get) the variable, attr_writer allows us to edit the variable (set) and attr_accessor allows us to do both.


Release 1:
=end