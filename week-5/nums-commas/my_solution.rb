# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

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
# def separate_comma(i)
# 	
# 	input_length = i.to_s.length
# 	output = []
# 
# 	if input_length <= 3
# 		p i.to_s
# 
# 	elsif input_length > 3
# 		# Take the input and split the integers into an array
# 		input = i.to_s.split('')
# 		# Iterate thru the array backwards
# 		counter = 1
# 		iteration = -1
# 		while counter < input_length + 1
# 		# Every third iteration, insert a comma
# 			output.unshift(input[iteration])
# 			if counter % 3 == 0 
# 				output.unshift(",")
# 			end
# 			iteration -= 1
# 			counter += 1
# 		end	
# 		# Return the array as a string
# 		if input_length % 3 == 0
# 			output.shift
# 		end
# 		p output.join
# 	end
# end
# separate_comma(1121180)


# 2. Refactored Solution
def separate_comma(i)
	output = []
	# Take the input and split the integers into an array
	input = i.to_s.split('')
	# Iterate thru the array backwards
	counter = 1
	iteration = -1
	while counter < i.to_s.length + 1
	# Every third iteration, insert a comma
		output.unshift(input[iteration])
		if counter % 3 == 0 
			output.unshift(",")
		end
		iteration -= 1
		counter += 1
	end	
	# Return the array as a string
	if i.to_s.length % 3 == 0
		output.shift
	end
	p output.join
end
separate_comma(180)



# 3. Reflection

# Wow, I cannot believe how long I spent not coding trying to figure this out.  
# easily 2 hours actively not coding just thinking about the problem.  I guess that 
# is what I need practice doing so I'm glad i did it!  I definitely "leveled up" so to speak.
# I had originally been on the right track but ultimately that original solution 
# was going to end up being more trouble than it was worth.  I basically wanted to 
# take care of the first four numbers in the integer, length wise.  then I was going to 
# essentially put in the commas in everything else after that because the first 4 were 
# handled differently... IE sometimes before the comma would have 1 2 or 3 integers.  
# As I found out from working this problem, that was a fairly poor way to handle it, every
# if I could find a way to brute force my way into getting solutions.  I had to 
# 	do battle with the sunk cost fallacy and restart the logic a bit.  
# 		I re thought how to solve the problem and it was a breeze.  I was forced to learn a lot of
# 		cool ruby methods.  I learned how to manipulate an array much better than I had.
# 		I looked up the .count method as well as iterated negatively.  It was great :)