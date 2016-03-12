class Dog
	def initialize(name=nil, age=0)
		if age < 1
			raise ArgumentError.new("Only living dogs allowed faggot")
		end
		@name	= name
		@age = age
	end

	def nipples
		puts "rub rub"
	end

	def red_rocket
		puts "gross vivian"
	end

	def inspect
		puts "#{@name} is #{@age}, WOOF!"
	end

	def add_year
		@age += 1
		puts "Now she is a year older! #{@age}"
	end
end