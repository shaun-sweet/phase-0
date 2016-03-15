# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:class that takes an array of strings as input
# Output: randomly spits out a string on method call .side
# Steps: straight forward
# 
# 


# Initial Solution
# 
class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("Please label your die!")
  	else
  		@sides = labels
  	end
  	
  end

  def sides
  	p @sides.count

  end

  def roll
  	p @sides.sample
  end
end



# Refactored Solution








# Reflection
# I toyed around with using the ternary for my ArgumentError.new portion but 
# ultimately thought it was too long of an expression to make it look nice
# I thought the readability was better doing the longer version in this situation
# Thus, I had a hard time refactoring this.  It seems like it is pretty much 
# as short as it is going to get.  This was a fun exercise.