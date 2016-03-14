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
# steps: 
  # take the string of words and create a hash with them as the key and the value default is 1
  # hash the program works with
  list = {} 	
  items.split.each do |x|
 		list[x] = 1
 	end
  p list# print the list to the console [can you use one of your other methods here?]
end
# output: hash with items(k) + qty(v)
list = create_list("milk eggs bananas broccoli oranges cereal")



# Method to add an item to a list
# input: item name and optional quantity(default = 1)
 def add_item(item, list=list)
 # steps: add a new item to the hash
 list[item] = 1
 p "You have added a new item to the list, here is the new list: "
 end
 # output:confirmation of adding item to list
 add_item("chocolate", list)
 p list


# Method to remove an item from the list
# input:item
 def delete_item(item, list)
 # steps: remove an item from the list
 list.delete(item)
 p "Deleted item, the updated list is: " 
 p list
 # output:confirmation of item removal
 end


# Method to update the quantity of an item
# input: item + new qty
def update_quantity(item, quantity, list)
# steps: read the item and find the item in the list
list[item] = quantity
# output: item and the new quantity as confirmation
p list
end



# Method to print a list and make it look pretty
# input: string
def show_list(list)
# steps: 
p list
# output: the list formatted in a human readable format (not a raw hash readout lol)
end

