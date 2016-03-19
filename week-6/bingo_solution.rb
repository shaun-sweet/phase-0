# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Call will do this.  

# Check the called column for the number called.
  # check will do this

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
#  Try making the letters keys that point to the appropriate section in the array.  

# class BingoBoard
  
#   def initialize(board)
#     @bingo_board = board
#     maperino
#     # map the BINGO letters in the hash to the appropriate index of the array on the board.
#   end

#   def call
#     # calls a random letter B I N G or O along with a random number 1-100 and saves that value
#     #DONE

#     @called_letter = @letters.keys.sample.to_s
#     @called_numbers = rand(1..100)
#     
#     @called = "#{@called_letter}#{@called_numbers}"
#     print @called
    
#   end

  
#     # checks the last called letter/number combo against the bingo board and if the value exists on the bingo board replace the value with an X to show that you have it

#     # if last called is EQUAL to any of the board values then
#     # replace that value with a STRING x, otherwise, do nothing

#     # check the letter first.  Then check the value of that letter for the number in called.
#     def check
#     if @called_letter == nil
#       raise ArgumentError.new("You need to call a number before you can check it!")
#     end
#     if @letters["#{@called_letter}"].include?(@called_numbers)
#       @index = @letters[@called_letter].index(@called_numbers)
#       return true
#     end
    
#     def inspect
#       nil
#     end
#     #remove this later
    
#   end

#   def mark
#     #if check returns true, replace that value with an x
#     if check == true
#       @bingo_board[@index] = @bingo_board[@index].map do |num|
#         if num == @called_numbers
#           'X'
#         else
#           num
#         end
#       end
#       maperino
#     end

#   end

#   def show
#     # shows the board with the previous X's you've accumulated.
#     #show single array on each line
#     # DONE
#     @bingo_board.each do |x|
#       print "#{x} \n"
#     end
   
#   end

#   private
#   def maperino
#     #this is a helper function that helps init to do the setup before you can play
#     # need to gather up the appropriate values and collect them in an array.  Then point the hash key to that **** DONE
#     @letters = {"B" => "[0]", "I" => "[1]", "N" => "[2]", "G" => "[3]", "O" => "[4]"}
#     b = []
#     i = []
#     n = []
#     g = []
#     o = []
#     @bingo_board.each do |x|
#       b << x[0]
#       i << x[1]
#       n << x[2]
#       g << x[3]
#       o << x[4]
#     end
#     @letters["B"] = b
#     @letters["I"] = i
#     @letters["N"] = n
#     @letters["G"] = g
#     @letters["O"] = o
#   end

# end

# Refactored Solution
class BingoBoard
  
  def initialize(board)
    #initialized the game instance and maps the array to a hash to model a bingo board.
    @bingo_board = board
    maperino
    
  end

  def call
    # Calls a new letter/number combo!
      # @called_letter = "B"
      # @called_numbers = 22

    @called_letter = @letters.keys.sample
    @called_numbers = rand(1..100)
    print "Now calling... #{@called_letter}#{@called_numbers}\n"
    sleep(1)
    check
    mark
    show
  end

  def inspect
    ["Bingo!", "Did you win yet?", "Feeling lucky?", "DADDY NEEDS A NEW MAC BOOK AMETUER!!!"].sample
  end

  def show
    # Shows the latest version of the board with all 'X' marked off.
    @bingo_board.each do |x|
      print "#{x} \n"
    end
  inspect
  end

  private

  def check
    #checks if the letter/number combo found with the .call method exists on your board! Cross your fingers :)
    if @called_letter == nil
      raise ArgumentError.new("You need to call a number before you can check it!")
    end
    if @letters["#{@called_letter}"].include?(@called_numbers)
      @index = @letters[@called_letter].index(@called_numbers)
      return true
    end
  end

  def mark
    #Checks if a value exists on your board, if so replaces it with an X
    if check == true
      @bingo_board[@index] = @bingo_board[@index].map do |num|
        if num == @called_numbers
          'X'
        else
          num
        end
      end
      maperino
    end
  end

  def maperino
   # This is a helper function to model the bingo board in a way that allows you to assign certain array indexes to a hash that represents the bingo letters at the top of the board.  
   #***This needs to be called anytime you make changes to @bingo_board in order to remodel it.***
    @letters = {"B" => [], "I" => [], "N" => [], "G" => [], "O" => []}
   
    @bingo_board.each do |x|
      @letters["B"] << x[0]
      @letters["I"] << x[1]
      @letters["N"] << x[2]
      @letters["G"] << x[3]
      @letters["O"] << x[4]
    end
    
  end

  

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
 board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]
g = BingoBoard.new(board)
g.call

puts ""
g.show


 
#Reflection
# This was a really fun challenge!  It wasn't super hard.  There was only really one or two sticking points.  I felt that it really brought everything so far we've learned together.  I DID break the rules, however.  I did look up a new method, that method is .index.  I figured out a way to check a value of a particular value but I needed the index of the particular value in order to tell the program to search that index on a different data set.  

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style??
# I tend to think of what "parts" it will need and add them in as methods.  Then I add comment lines to detail out what each method will do and fill in the code as I go.  This helps keep everything separated. The outline tends to get me to write in the methods

# What are the benefits of using a class for this challenge?
# Oh man, the class is super helpful because the instance variables are just amazing.  It allows you to pass information back and forth so easily and effortlessly.  I love it.  It also lets you save separate instances of the game.  I could instantiate 2 instances of the game under two different variables and play both!

# How can you access coordinates in a nested array?
# Easy!  array[0][1] would snag "world" (if array = [["hello", "world"], 1,3,"hello"]).  It is pretty straight forward.

# What methods did you use to access and modify the array?
# I used push originally then I used map to target a value I wanted to replace with the 'x'

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# THE CHALLENEGE SAID NOT TO LOOK UP NEW METHODS!!! inconsistencies... shesh DBC ;).  I actually broke the rules, I looked up .index and it was a wonderful method that allowed me to find the index of the value it had found.  I combo'd the .include? in this code bunch
# if @letters["#{@called_letter}"].include?(@called_numbers)
#       @index = @letters[@called_letter].index(@called_numbers)
#       return true

# to check if the called number was equal to the value on the board (but I used a hash I then modeled to act a like a better bingo table :P)

# How did you determine what should be an instance variable versus a local variable?
# Honestly, I didn't.  I just made everything an instance variable.  I guess if a value is just needed for a certain method though and no where else, I should probably make that a standard variable.  I went back into my code and fixed that.  Thank you reflection questions.  

# What do you feel is most improved in your refactored solution?
# my method maperino.  I KNEW there was a way to make that not so verbose and silly.  I just wanted to get a working version up because in the grand scheme, that part really doesn't matter.  But I knew there was a better way to express that and I think the solution I came up with is really elegant and I'm proud of it.