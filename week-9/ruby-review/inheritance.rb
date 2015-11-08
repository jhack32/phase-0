# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode
=begin
Create a class (GlobalCohort)
	create a method that initialize (takes arguments)
		setup the variables (cohort_name, p0_start_date, immersive_start_date, graduation_date, num_of_students)
	end the initialize
	DEFINE a method called add_student that takes their name, city, email 
		add them onto the students variable
		add 1 to num_of_students
		add them to the email list
	end the method
	DEFINE a method called remove_student that takes their name, city, email
		remove them from students
		remove 1 from num_of_students
		remove from email list
	end the method
	DEFINE a method called currently_in_phase
		set current_date equal to subtract the current month and day from the start date,
		IF current_date is less than 9 weeks
			currently in phase 0
		ELSIF current_date is over 9 weeks but less than 12 week
			currently in phase 1
		ELSIF it's been over 12 weeks but less than 15 weeks
			currently in phase 2
		ELSIF it's over 15 weeks but not equal to the graduation date
			currently in phase 3
		ELSE
			they have graduated.
		end the conditional statement
	end the method
	DEFINE a method called graduated?
		the cohort has graduated IF the current date is equal or greater than the graduation_date
	end the method
end the class

create a class called LocalCohort that inherits globalcohort
	DEFINE an initialize method
		location, start date
	end the method
	DEFINE a method that shows the people in the cohort
		create local_cohort variable
		LOOP through the array
			LOOP through the sub-array
				when you find the location 
					add the entire sub-array into local_cohort
			end the loop
		end the loop
	end the method
end the class
=end



# Initial Solution

class GlobalCohort
  #your code here
  attr_reader :cohort
  def initialize(name, p0_start_date, immersive_start_date, graduation_date, email)
  	@name = name
  	@p0_start_date = p0_start_date
  	@immersive_start_date = immersive_start_date 
  	@graduation_date = graduation_date 
  	@email = email
  end
  def organize
  	@cohort = []
  	cohort.push(@city, @students, @name, @p0_start_date, @immersive_start_date, @graduation_date,  @email)
  end
end

class LocalCohort
  #your code here

end

newcohort = GlobalCohort.new("brooklyn", "jack", "copperheads", "9/08/2015", "11/09/2015", "1/22/2015", "jack7100@gmail.com")
p newcohort.organize
p newcohort.cohort
# Refactored Solution





# Reflection