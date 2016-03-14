# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# take the input and store it in a hash with the default qty = 1
# set default quantity 
# print the list to the console [can you use one of your other methods here?]
# output: Hash


# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def create_list(items)

  hash = {} 	
  items.split.each do |x|
 		hash[x] = 1
 	end
 	hash
 	show_list(hash)
end

# Method to add an item to a list
# input: item name and optional quantity(default = 1)
def add_item(item, hash=list)
	hash[item] = 1
	p "You have added a new item to the list, here is the new list: "
	show_list(hash)
end

# Method to remove an item from the list
# input:item
def delete_item(item, hash)
 # steps: remove an item from the list
 hash.delete(item)
 p "Deleted item, the updated list is: " 
 show_list(hash)
 # output:confirmation of item removal
end

# Method to update the quantity of an item
# input: item + new qty
def update_quantity(item, quantity, hash)
	# steps: read the item and find the item in the list
	hash[item] = quantity
	# output: item and the new quantity as confirmation
	show_list(hash)
end

# Method to print a list and make it look pretty
# input: string
def show_list(hash)
	# steps: 
	hash.each {|k,v| p "#{k} | Qty: #{v}" }
	# output: the list formatted in a human readable format (not a raw hash readout lol)
end


# interface with the program
# puts "Welcome to my first grocery list program ^_^!.....\n\n"
# puts "Lets first start by creating a list...  Simply enter in what you'd like to remember to buy with # everything separated by spaces.. ex:(milk oranges marshmallows eggs)\n\n"
# #sleep(5)
# puts "So now that you know how I work, lets get started!"
# p "What items would you like to add?"
# list = create_list(gets.chomp)
# 
# p "Great!  So we have made our list.  To show the list at any time, type 'show'."
# help = p "The commands are thus: add, delete, update, show.  Type 'done' to finish and exit the program"
# help
# 
# until gets.chomp == 'done'
# 	puts "What are we doing next captain?"
# 	
# 	case gets.chomp
# 	when "add"
# 		p "What item do you want to add?"
# 		add_item(gets.chomp, list)
# 		
# 	else
# 		p "That isn't a valid command. "
# 		help
# 	end
# end
# 
# 
# 
# 





