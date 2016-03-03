# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#first we need to sort the array from smallest to biggest.  Then, we can just return the zeroth object in the array.
#to sort the array, we can iterate through the array, one at a time.  so we will need something to keep track of which iteration (loop counter) we are on.  we will need a way to need a way to determine when to STOP looping, the interation needs to stop once there is no more array.  
def smallest_integer(list_of_nums)
  smallest_num = list_of_nums[0]
  counter = 0 
  while counter < list_of_nums.length
    if smallest_num > list_of_nums[counter]
      smallest_num = list_of_nums[counter]

    end
    puts counter
    counter += 1
  end
  smallest_num 
end
smallest_integer([-100,3, -6,-43,-32,-5])