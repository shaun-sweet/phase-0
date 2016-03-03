# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def leap_year?(year)
# The year is evenly divisible by 4;
#If the year can be evenly divided by 100, it is NOT a leap year, unless;
#The year is also evenly divisible by 400. Then it is a leap year. 

# IF year mod 4 == 0 AND year divided by 100 is NOT EQUAL TO 0 AND
# year mod 400 == 0
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