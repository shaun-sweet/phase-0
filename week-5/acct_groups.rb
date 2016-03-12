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