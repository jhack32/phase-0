# Virus Predictor

# I worked on this challenge [Celeste Carter].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# load the file that is relative to the file containing the require_relative statement.

require_relative 'state_data'
class VirusPredictor
  # this method is initialize - it will create the instance variables when the object is created. It also contains the arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #  the methods calls on the methods predicted_deaths & speed of spread. There is nothing returned; only called.
  #REMOVED INSTANCE VARIABLES BC THEY ARE ARE AVAILABLE THROUGHOUT THE CLASS.
  # private - does not work bc this method needs to be able to call upon the instances outside of the class.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  #  private - you can only access method within the class
  private
  # printing in conditional statements based on calculations. Method retuns printed statement with data included.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  # calculates speed based on population_density. Returns statement with data enclosed.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
  public
  def self.all_reports
    STATE_DATA.each do |x, y|
      state = VirusPredictor.new(x, y[:population_density], y[:population])
      state.virus_effects
    end
  end

end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
name = VirusPredictor.all_reports

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

In the larger hash, it use hash rockets.

What does require_relative do? How is it different from require?

Require relative loads the file in a specific directory whereas require is usually used when the file is in the same directory. Require relative allows us to load a file relative to the file that has the require_relative method.

What are some ways to iterate through a hash?

We can use a each or map method.

When refactoring virus_effects, what stood out to you about the variables, if anything?

We didn't need to call the instance variables again because the instance variables can be accessed throughout the class. It's not DRY to have it as an argument in the method.

What concept did you most solidify in this challenge?

I have a better understanding of nested arrays and iterating through it. I was a little iffy about it before but feel a lot better about it now.

=end