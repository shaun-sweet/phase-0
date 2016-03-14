# Your Names
# 1) Shaun Sweet
# 2) Esther Leytush

# We spent [.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
  
  # library.keys => # ["cookie", "cake", "pie"]
  
  if !library.has_key?(item_to_make)
    raise ArgumentError.new("Silly you, you can't bake #{item_to_make}...")
  end
  
   serving_size = library[item_to_make]
   remaining_ingredients = num_of_ingredients % serving_size
  
    # case remaining_ingredients
  # when 0
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  # else
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  # end
  
  returning_message = "Calculations complete: Make #{num_of_ingredients / serving_size} #{item_to_make}"
  if remaining_ingredients > 0
    potential_goodies = library.select{|key, value| value <= remaining_ingredients}.keys # => array
    returning_message << ", you have #{remaining_ingredients} leftover ingredients." 
    returning_message << " Suggested baking items: #{potential_goodies.join(", ")}"
  end
  
  returning_message
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

#I really enjoy refactoring, it is a lot of fun!  I learned a good bit pretty quickly with this challenge!  I learned that {}.key will spit out an array of all the keys and the same with {}.value.  This is amazing! I never knew about these methods but that is incredibly helpful to know!
