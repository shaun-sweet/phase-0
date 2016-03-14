# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

 #Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end
 #Identify and describe the Ruby method(s) you implemented.




# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |x|
      #takes an array and finds all the integers in the array
    if x.is_a?(Integer)
      # adds the inputted integer to all the existing integers
      x = x + thing_to_modify
    end
    x
  end
  # returns the modified array
end
p my_array_modification_method!(i_want_pets, 3)

def my_hash_modification_method!(source, thing_to_modify)
  #take a hash and an integer in and modify the hash values to add the integer submitted
  source.each do |k,v|
    source[k] = v + thing_to_modify
  end
end
p my_hash_modification_method!(my_family_pets_ages, 4)

# Identify and describe the Ruby method(s) you implemented.
# .each i think everyone should be familiar with!  I used that for my modification of a hash.  That was fairly straight forward i thought.  I gave myself two block variables k and v to represent the key and value on each iteration through the hash.  Then I just spit out the key and modified the value by what gets passed into the method.  
#  For the first method I created. I used map.  Map iterates through and each pass through, whatever the expression evaluates to, it creates a new array with that result of that expression.  UNLESS you use .map! which does the same thing but modifies the existing array instead of making a new one.
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
# 
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
 #accountability group how to use the methods.



 #Release 3: Reflect!
 #What did you learn about researching and explaining your research to others?



