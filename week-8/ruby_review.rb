# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Create function that takes in a string
# split the string into an array with each word as an array value
# reverse each word in the array
# join the array back into a string and return the result



# Initial Solution
# def reverse_words(string)
# 	# split the string into an array with each word as an array value

# 	result = []
# 	words = string.split
# 	# reverse each word in the array
# 	words.each do |word|
# 		result << word.reverse
# 	end
# 	p result.join(" ")
# end

# reverse_words("hello pretties")

# Refactored Solution

def reverse_words(string)
	# split the string into an array with each word as an array value

	result = []
	# reverse each word in the array
	string.split.each do |word|
		result << word.reverse
	end
	p result.join(" ")
end




# Reflection
# This was pretty straight forward!  Ruby definitely makes this much easier than it would have been to do this in javascript.