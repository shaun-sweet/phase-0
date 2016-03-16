# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: takes a number as the answer when initialized.  Takes guesses
# Output:  Return whether your guess needs to be higher or lower or if it
# is correct
# Steps:  Initialize the class with the answer
#  Guess the answer with a guess method
# Return wether that guess is higher or lower than the answer
# if it is true, return correct


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     # Takes the argument and assign it as the answer for this instance
#     @answer = answer
#   end

#  	def guess(guess)
#  		@last_guess = guess
#  		if @last_guess > @answer
#  			@last_guess = :high
#  		elsif @last_guess < @answer
#  			@last_guess = :low
#  		else 
#  			@last_guess = :correct
#  		end
#  	end

#  	def solved?
#  		if @last_guess	== :correct
#  			return true
#  		else
#  			return false
#  		end
#  	end

# end




# Refactored Solution


class GuessingGame
  def initialize(answer)
    # Takes the argument and assign it as the answer for this instance
    @answer = answer
  end

 	def guess(guess)
 		@last_guess = guess
 		if @last_guess > @answer
 			@last_guess = :high
 		elsif @last_guess < @answer
 			@last_guess = :low
 		else 
 			@last_guess = :correct
 		end
 	end

 	def solved?
 		@last_guess == :correct ? true : false
 	end

end

# Reflection
# This was actually a bit easier than I expected!  Very straight forward.  I was a bit worried.
# I couldn't really think of how to refactor this solution but figure the ternary if statement was perfect
# to make this a bit more readable!  Hopefully you agree :)

# How do instance variables and methods represent the characteristics and 
# behaviors (actions) of a real-world object?
# Let's say we have cars class and thus the car as our object.  The instance variables in the car
 # would be things like the transmission, because it needs different values based on other things.
 #   The various buttons in the car and options would all be methods.  The instance variables would
 #    be what keep track of the methods changing the information.  So in this situation the human is
 #     the method in real life and that human uses methods (buttons) to change the values of the 
 #     instance variables like having the A/C on or the heat on.  Like having the windows down or 
 #     open.  The methods would be for example the button that rolls the window down and up and the 
 #     instance variable is the thing that holds the value… so whether or not that window is down or 
 #     up… that is stored in the instance variable.  

# You could go on and on with this analogy and modelling of real world scenarios.

# # When should you use instance variables? What do they do for you?
# They are needed to store information inside an object that has been instantiated.  
# That is how you pass information around the object without having it available to anything but
#  THAT specific instance of the object.  They store information that the methods within the 
#  object typically manipulate.  

# # Explain how to use flow control. Did you have any trouble using it in this challenge? 
# # If so, what did you struggle with?
# Flow control is fairly simple for the most part.  In this challenge I did not struggle with 
# it.  

# # Why do you think this code requires you to return symbols? What are the benefits of 
# # using symbols?
# I think that symbols are very precise and specific.  I know that they are completely unique 
# as in “correct” and “correct” aren’t always the same object (unless you save “correct” in a 
# 	variable and call that variable) :correct and :correct are the exact same object.  What 
# benefit that provides?  I’m not entirely sure.
