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