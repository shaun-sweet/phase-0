# Leap Years

# I worked on this challenge [with: John Colella].


# Your Solution Below

 #evenly divisible by four it IS
 #evenly divisible by 100 but NOT 400 then it is not a leap_year
 #evenly divisible by 400 it IS a leap year

def leap_year?(year)
	if year % 400 == 0
		return true
	elsif year % 100 == 0 
		return false
	elsif year % 4 == 0
		return true
	else 
		return false
	end
end