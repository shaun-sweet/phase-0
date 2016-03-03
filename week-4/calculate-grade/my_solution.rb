# Calculate a Grade

# I worked on this challenge [by myself].


# Your Solution Below

# make a method that accepts an average in the class and gives the letter associated with the grade point 

def get_grade(gpa)
	
	if gpa < 60 
		p "F"
	elsif gpa < 70
		p "D"
	elsif gpa < 80
		p "C"
	elsif gpa < 90
		p "B"
	else 
		p "A"
	end
	#IF gpa < 60 then RETURN F
	#IF gpa < 70 then RETURN D
	#IF gpa < 80 then RETURN C
	#IF gpa < 90 then RETURN B
end