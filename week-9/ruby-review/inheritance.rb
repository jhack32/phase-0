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


#TIME IS YEAR/MONTH/DAY
# Initial Solution
require "time"
require "date"

class GlobalCohort
  #your code here
attr_reader :ny, :chi, :sf
  def initialize(name, p0_start_date, immersive_start_date, phase2, graduation_date)
  	@name = name
  	@p0_start_date = p0_start_date
  	@immersive_start_date = immersive_start_date 
  	@graduation_date = graduation_date
  	@phase2 = phase2
  	@num_of_students = 0
  	@@ny = []
  	@chi = []
  	@sf = []
  	@email_list = []
  end
  def add_student(name, city, email)
  	if city == "ny"
		@@ny.push([name, email])
	elsif city == "chi"
		@chi.push([name, email])
	elsif city == "sf"
		@sf.push([name, email])
	else
		puts "Sorry, cohort location cannot be found (ny, chi, or sf only)"
  	end
  	@email_list.push(email)
  	@num_of_students += 1
  end
  def remove_student(name, city, email)
  	if city == "ny"
		@@ny.delete([name, email])
	elsif city == "chi"
		@chi.delete([name, email])
	elsif city == "sf"
		@sf.delete([name, email])
	else
		puts "Sorry, cohort location cannot be found (ny, chi, or sf only)"
  	end
  	@email_list.delete(email)
  	@num_of_students -= 1
  end
  def currently_in_phase
  	if Time.now <= Time.parse(@p0_start_date)
  		return "Phase 0"
  	elsif Time.now >= Time.parse(@immersive_start_date)
  		return "Phase 1"
  	elsif Time.now >= Time.parse(@immersive_start_date) && Time.now <= Time.parse(@phase2)
  		return "Phase 2"
  	elsif Time.now >= Time.parse(@phase2) && Time.now <= Time.parse(@graduation_date)
  		return "Phase 3"
  	else
  		graduated?
  	end
  end
  def graduated?
  	return Time.now >= Time.parse(@graduation_date) ? "The #{@name} graduated on #{@graduation_date}!" : "The #{@name} have not graduated yet"
  end
  def self.show_cohort(location)
  	if location == "ny"
  		return @@ny
  	elsif location == "chi"
  		return @@chi
  	elsif location == "sf"
  		return @@sf
  	else
  		return "The location does not exist"
  	end
  end
end

class LocalCohort < GlobalCohort
  #your code here
  def initialize(location, start_date)
  	@location = location
  	@start_date = start_date
  end
  def show(location)
  	GlobalCohort.show_cohort(location)
  end
end

#TIME IS YEAR MONTH DAY
newcohort = GlobalCohort.new("Copperheads", "2015/09/07", "2015/11/09", "2015/12/21", "2016/01/22")
newcohort.add_student("Jack", "ny", "Jack7100@gmail.com")
p newcohort.add_student("A", "ny", "a@a.com")
p newcohort.remove_student("A", "ny", "a@a.com")
p newcohort.currently_in_phase
localcohort = LocalCohort.new("ny", "2015/09/07")
p localcohort.show("ny")
# Refactored Solution





# Reflection