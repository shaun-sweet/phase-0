# I worked on this challenge [by myself, with: ].

  # need to check if a b and c are all equal LAST
  
  #IF a + b > c return true
  #IF a + c > b return
  #IF b + c > a return true
  #IF a == b
  #IF b == c
  #elsif
# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!

 if a == 0 || b == 0 || c == 0
 	return false
 elsif a == b && b == c
 	return true
 elsif a + b > c && b + c > a && a + c > b
 	return true
 end
end
