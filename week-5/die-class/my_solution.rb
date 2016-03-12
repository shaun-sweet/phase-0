# Die Class 1: Numeric

# I worked on this challenge [by myself

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

#class Die
#  def initialize(sides)
#    if sides < 1
#    	raise ArgumentError.new("Needs at least one side!")
#    end
#    @sides = sides
#    p @sides
#  end
#
#  def sides
# 		p @sides
#    end
#
#  def roll
#    # returns a random number between 1 and the number of sides the die has
#    p rand(1..@sides)
#  end
#end



# 3. Refactored Solution
class Die
  def initialize(sides)
    if sides < 1
    	raise ArgumentError.new("Needs at least one side!")
    end
    @sides = sides
    
  end

  def sides
 		p @sides
    end

  def roll
    # returns a random number between 1 and the number of sides the die has
    p rand(1..@sides)
  end
end






# 4. Reflection

#This was a bit daunting at first.  But I stopped worrying about how daunting it was and just went at it and it didn't even take too long!  I had some issues with not understanding I had to assign the argument to the instance variable in the init method, but after I knocked that out it all fell into place!