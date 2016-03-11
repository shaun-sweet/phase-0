# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# positive integer 
# What is the output? (i.e. What should the code return?) The output is turning
# A positive integer into a comma separated string.
# # A Comma-separater integer as a string. Like this:
# 
# separate_comma(1000)    # => "1,000"
# separate_comma(1000000) # => "1,000,000"
# separate_comma(0)       # => "0"
# separate_comma(100)     # => "100"
# # What are the steps needed to solve the problem?
# First step is to scan the integer and apply logic 
# that determines the integer.length and what the appropriate number of commas
# and where they belong.  the last step is to print out the integer as a string 
# comma formatted to perfect
# 
# 
# 1. Initial Solution
def separate_comma(i)
	
	input_length = i.to_s.length
	output = []

	if input_length <= 3
		p i.to_s

	elsif input_length > 3
		# Take the input and split the integers into an array
		input = i.to_s.split('')
		# Iterate thru the array backwards
		counter = 1
		iteration = -1
		while counter < input_length + 1
		# Every third iteration, insert a comma
			output.unshift(input[iteration])
			if counter % 3 == 0 
				output.unshift(",")
			end
			iteration -= 1
			counter += 1
		end	
		# Return the array as a string
		if input_length % 3 == 0
			output.shift
		end
		p output.join
	end
end
separate_comma(1121180)


# 2. Refactored Solution




# 3. Reflection

#result_array = []
#		counter = -1
#		x = input_length
#		while counter > input_length
#			if counter % 3 == 0
#			output += i.to_s[counter] + ","
#		counter -= 1
#			else
#				output += i.to_s[counter]
#				counter -= 1
#			end
#		end
#		p output