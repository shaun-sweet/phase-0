# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Shaun Sweet.
# I spent [#] hours on this challenge.

# Pseudocode

# Method to Validate Credit Card Number
# Input: a string with 16 digits
# Output: whether the credit card numberi s valid (true/false)
# Steps:
=begin

-- Method to Double Every Other Digit
FOR each digit in the number, tracked by index
	Double the digit IF the index is odd
	Add the digit into a new array
ENDFOR

-- Method to Add Up All the Digits
Combine all the digits into a single string
Add up all the individual numbers (digits) into a running sum

-- Method to Validate the Running Sum
IF sum is multiple of 10
	Credit card number is valid
ELSE
	Credit card number is invalid
ENDIF

Comments
6632 2323
["12", "6", "9", "212321321", "41231231", "312321", "4", "3"]
["126924343"]
go through each digit

=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
# 	def initialize(credit_card)
# 		@credit_card = credit_card
# 		if @credit_card.length != 16
# 			raise ArgumentError.new("Please provide 16 digits!  Thanks")
# 		end
# 	end

# 	def check_card
# 		@array = []

# 		@credit_card.each_char.with_index do |digit, i|

# 			if i % 2 == 0
# 				@array << digit.to_i * 2
# 			else
# 				@array << digit
# 			end

# 		end
# 		p @array
# 		p add_up
# 		p valid?
# 	end

# 	def add_up
# 		@result = 0
# 		@array.join.each_char do |char|
# 			@result += char.to_i
# 			p char
# 		end
# 		@result
# 	end

# 	def valid?
# 		if @result % 10 == 0
# 			return true
# 		else
# 			return false
# 		end
# 	end

# end

# c = CreditCard.new("4563960122001999")
# c.check_card



# Refactored Solution


class CreditCard

	def initialize(credit_card)
		@credit_card = credit_card
		if @credit_card.length != 16
			raise ArgumentError.new("Please provide 16 digits!  Thanks")
		end
	end

	def check_card
		# To hold the numbers with every other digit doubled
		@doubled_digits = []

		# Doubles every other digit
		@doubled_digits = @credit_card.split("").map.with_index do |digit, i| 
			i.even? ? digit.to_i * 2 : digit
		end

		p @doubled_digits

		# Add up all the individual digits
		p add_up

		# Validate credit card running sum
		p valid?
	end
3
	def add_up
		# To keep a running sum of the individual digits
		@running_sum = 0

		@doubled_digits.join.each_char do |char|
			@running_sum += char.to_i
			p char
		end
		
		@running_sum
	end

	def valid?
		# Credit card sum is valid if multiple of ten
		@running_sum % 10 == 0 ? true : false
	end

end

c = CreditCard.new("4563960122001999")
c.check_card





# Reflection
=begin

What was the most difficult part of this challenge for you and your pair?
The most difficult part was translating the psuedocode into actual code!


What new methods did you find to help you when you refactored?
.with_index.  IT IS AMAZING!


What concepts or learnings were you able to solidify in this challenge?
I feel more comfortable with map which I was feeling super shakey with last week.  I understand how it works much better now!


=end
