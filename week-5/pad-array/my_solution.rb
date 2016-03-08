
# Pad an Array

# I worked on this challenge with: Samantha Holme

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, a minimum size, pad value
# What is the output? An array padded with the pad value up to the minimum size
# What are the steps needed to solve the problem?

# Define a method that takes in three arguments
# Determine if array is = or > minimum size
 # If true, return array
# If false, add pad element
# Using a loop, repeat these steps until array is minimum size
# Return array



# 1. Initial Solution

# def pad(array, min_size, value = nil) #non-destructive
#  new_array = []
#  array.each do |element|
#    new_array << element
#  end
#  until new_array.length >= min_size
#      new_array << value
#  end
#  return new_array
# end
# 
# p pad([1,2,3],5,"apple")


# def pad!(array, min_size, value = nil) #destructive
#  until array.length >= min_size
#      array = array.push(value)
#  end
#  return array
# end
# 
# p pad!([1,2,3],5,"apple")


# 3. Refactored Solution


def pad(array, min_size, value = nil)
	new_array = []
	new_array += array
	(min_size - array.length).times do 
		new_array << value
	end
	return new_array
end


p pad([1, 3, 2], 5, "apple")



def pad!(array, min_size, value = nil)
   (min_size - array.length).times do
       array << value
   end
   return array
end
## Reflection
#I found this to be a fun challenge.  We got our initial solutions working well pretty 	quickly.#  I had my partner paste the code in and then had a weird issue with sumblime seeing a character that wasn't actually there and it took me a while to figure out.  Looks like pasting content in from slack can do that.  Anyways, the refactoring was interesting because we could NOT find any good methods to do what we wanted in an easier way.  We ended up just making the original code a bit cleaner and more efficient which was super fun.  
#
#
#
#
#
#

