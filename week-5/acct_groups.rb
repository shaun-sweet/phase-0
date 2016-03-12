# Take user input of names and convert them into array items
# split the array into groups of 3 

def accountability_group
	puts "What are the names? "
	input = gets.chomp.split()
	i = 1
	input.each_slice(4) do |a| 
		p "Accountability group number: #{i}"

		p a
		i += 1
	end
end
accountability_group

#Reflection
# This assignment was extremely confusing to me.  The wording was poor and I go to it on the weekend so didn't have a way to clarify what DBC was wanting from me.  So I just put something together that did what they said.  Split a group of people into groups of 4.  I did have to look up a new method "each_slice" which was interesting to find!  