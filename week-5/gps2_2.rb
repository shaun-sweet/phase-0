# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# take the input and store it in a hash with the default qty = 1
# set default quantity 
# print the list to the console [can you use one of your other methods here?]
# output: Hash

list = {}
puts "Create your list: "
input = gets.chomp

def grocery_list(string)
	# Grab input and convert it to a hash
	
	string.split.each do |item|
		list["#{item}"] = 1
	end
	p list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:
def add_item(item)
	
end

# Method to remove an item from the list
# input:
# steps:
# output:
def remove_item(item)
	
end
# Method to update the quantity of an item
# input:
# steps:
# output:
def chng_quantity(item, quantity)
	
end

# Method to print a list and make it look pretty
# input:
# steps:
# output:
def show_list
	
end

grocery_list(input)


