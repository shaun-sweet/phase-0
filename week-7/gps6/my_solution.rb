# Virus Predictor

# I worked on this challenge [by myself, with: Esther Leytush ].
# We spent [#????] hours on this challenge.

# EXPLANATION OF require_relative
# require relative tells ruby to pull in a file which is specified by the argument given to require_relative
#
require_relative 'state_data'

class VirusPredictor
  # Iitializing the attributes of the class as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# virus effect just calls two other methods that print out data where the calculations have already been performed.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  #  This is a private helper method, it takes the arguments passed into the class and performed calculations on them to find out the predicted number of deaths given the data.  
  # This method rounds down.
  # It will also print out a string to make the information pretty!
  def predicted_deaths(population_density, population, state)
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

# takes the population_density and the state as arguments and compares it to see how fast the virus will spread.  
  def speed_of_spread(population_density, state) #in months
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

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |k, v|
  current_state = VirusPredictor.new(k, v[:population_density], v[:population])
  current_state.virus_effects
end

#=======================================================================
# Reflection Section
# Constants are accessible from within their class.  If they are defined outside of a class, they are considered global.  In this situation, our constant STATE_DATA is global
# because it is being defined from outside our class VirusPredictor
# • What are the differences between the two different hash syntaxes shown in the state_data file?
# Well, they definitely serve almost identical purposes.  
# {“key” => “value”}
# Creates a hash with the key as the string “key” and the value as the string “value”.
# {key: “value”} creates a hash, but instead of the key being a string, it is a symbol which is immutable.  It cannot be changed.  It is also a “shorthand” way of typing it out!

# • What does require_relative do? How is it different from require?
# require will load in a file and if an absolute directory isn’t specified (like C:/users/etc/etc.rb) then it will check the directories in $LOAD_PATH for the particular file you named.
# Require_relative will just search for the file relative to where the call to require_relative was called from.  So if the two files reside in the same directory, you can call require_relative ‘file.rb’

# • What are some ways to iterate through a hash?
# I imagine the most common way is to use an each method
# Hash.each do |k,v| puts k + v end
# This will go through and print out the key and the value in that hash.  You need two block variables in order to have a spot for the key and the value.  
# • When refactoring virus_effects, what stood out to you about the variables, if anything?
# They had totally unnecessary code in the form of passing in arguments that were already able to be accessed via an instance variable.
# • What concept did you most solidify in this challenge?
# It was actually pretty easy!  It was fun to go through and have a ruby review for the week 



