#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
attr_reader :name
def initialize
	@name = "shaun"
end

end

class Greetings
	
	def initialize
		@name_data = NameData.new
	end

	def hello
		puts "Hello #{@name_data.name}"
	end

end



# Reflection
# •	What are these methods doing?
# They are doing what the code says they will do ;P
# Really though they are just print values and allowing you to change values…. So you can print the new values.
# •	How are they modifying or returning the value of instance variables?
# def change_my_name=(new_name) is a shorthand to allow you to use this method in shorthand.  TECHNICALLY the method name is change_my_name= but that is awkward so what ruby does when it sees that is allows you to do this:
# p = Profile.new
# p.change_my_name = “shaun”
# ^^ this is what ruby allows you to do when it sees that method name.  you COULD write out
# p.change_my_name=(“shaun”) but that is awkward and really doesn’t look at clean.  



# 1.	What changed between the last release and this release?
# Def what_is_age got eliminated and replaced with: attr_reader :age
# 2.	What was replaced?

# 3.	Is this code simpler than the last?
# yes

# What changed between the last release and this release?
# def change_my_age=(new_age) was removed  and  attr_writer :age was added
# What was replaced?
# Is this code simpler than the last?
# Yes

# What is a reader method? That is a method that you add to a class that spits out information that you want.  
# What is a writer method?  That is a method in a class that takes an argument and alters the existing information in that instance with the argument passed to it.
# What do the attr methods do for you? They are just short hand to create those methods in a nice, concise and easy to use way.  
# Should you always use an accessor to cover your bases? Why or why not?
# No, sometimes you don’t want the public to read or write information to that particular instance.  
# What is confusing to you about these methods?
# I was confused about how the symbol converts to the actual method name
# So when you have 
# Class NewClass
# Attr_reader :name
# End
# And then you do NewClass.name it is confusing to me that it creates a method with the symbol.  But it makes sense, because the symbols are unique so you literally CANNOT use that symbol within that class for ANYTHING else.  It was just jarring to see happen the first few times.  I’m sure I’ll get used to it.

