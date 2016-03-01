# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?errors.rb
#
# 2. What is the line number where the error occurs? 170
#
# 3. What is the type of error message?syntax error
#
# 4. What additional information does the interpreter provide about this type of error? says it wasn't expecting input to end, it was expecting an end keyword
#
# 5. Where is the error in the code? im confused as to what this question wants.  this seems answered in #2, the error is on line 170.
#
# 6. Why did the interpreter give you this error? because there is no end keyword inside the the method.  You need two in this instance because while requires an end keyword and so does the method.  so the entire program is off and it keeps going looking for the proper amount of "ends" and it never got it.
#

# --- error -------------------------------------------------------

south_park = nil

# 1. What is the line number where the error occurs? 36
#
# 2. What is the type of error message? undefined local variable or method
#
# 3. What additional information does the interpreter provide about this type of error? it is saying south_park is not defined.  surprise, it isn't!
#
# 4. Where is the error in the code? on line 36... i'm sure i'm not getting this question haha
#
# 5. Why did the interpreter give you this error? because south park isn't defined.
#

# --- error -------------------------------------------------------

def cartman()
puts "rules"
end

# 1. What is the line number where the error occurs?51
#
# 2. What is the type of error message? undefined method
#
# 3. What additional information does the interpreter provide about this type of error? cartman is undefined
#
# 4. Where is the error in the code? 51
#
# 5. Why did the interpreter give you this error? because cartman() isn't defined, just called.
#

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase + "I hate kyle."

# 1. What is the line number where the error occurs? 68
#
# 2. What is the type of error message? wrong number of arguments!
#
# 3. What additional information does the interpreter provide about this type of error? it is expecting 0 arguments, but got 1
#
# 4. Where is the error in the code? line 68
#
# 5. Why did the interpreter give you this error? because we DID IT WRONG!!!.... because there is an argument and there shouldn't be.
#

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I was tempted to be mildly offensive, but judgement said no")

# 1. What is the line number where the error occurs? 87
#
# 2. What is the type of error message? wrong number of arguments
#
# 3. What additional information does the interpreter provide about this type of error? expecting 1 argument, got 0
#
# 4. Where is the error in the code? 87
#
# 5. Why did the interpreter give you this error? because ruby was expecting the method we made cartman_says to have an argument and it didn't
#



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'you killed kenny!')

# 1. What is the line number where the error occurs? 108
#
# 2. What is the type of error message? wrong number of arguments
#
# 3. What additional information does the interpreter provide about this type of error? expecting 2 arguments, got 1
#
# 4. Where is the error in the code? 108
#
# 5. Why did the interpreter give you this error? because the method wants 2 arguments, not 1
#

# --- error -------------------------------------------------------

5 * "Respect my authoritay!".length.to_i

# 1. What is the line number where the error occurs? 127
#
# 2. What is the type of error message? string cannot be coerced into fixnum
#
# 3. What additional information does the interpreter provide about this type of error? none
#
# 4. Where is the error in the code? with the * specifically
#
# 5. Why did the interpreter give you this error? because 5 times a string no worky
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/10


# 1. What is the line number where the error occurs? 142
#
# 2. What is the type of error message? you can't divide by 0
#
# 3. What additional information does the interpreter provide about this type of error? zerodivision error
#
# 4. Where is the error in the code? /
#
# 5. Why did the interpreter give you this error? cos the internet breaks when you divide by 0!
#

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md" got nothing to change this to work :()

# 1. What is the line number where the error occurs? 158
#
# 2. What is the type of error message? require_relative
#
# 3. What additional information does the interpreter provide about this type of error? loaderror
#
# 4. Where is the error in the code? in "require_relative"
#
# 5. Why did the interpreter give you this error?
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#This was fun!! mostly review for me :)