# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
set @letters equal to (b, i, n, g, o)
shuffle the variable and pop the last letter and set it to call_letter.
choose a random number and set it as call_number.

# Check the called column for the number called.
  #fill in the outline here
  If call_letter is B then check sub-array 1 for the call_number
    and set match to yes
  but if call_letter is I then check sub-array 2 for call_number
    set match to yes
  or if call_letter is N then check sub-array 3 for call_number
    set match to yes
  or call_number is G then check sub-array 4 for call_number
    set match to yes
  and finally if call_number is O then check sub-array 5 for call_number
    set match to yes

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  If match is equal to yes then
    find where the number in the column is and delete it
    then add X to it

# Display a column to the console
  #fill in the outline here
  print the sub-array column

# Display the board to the console (prettily)
  #fill in the outline here
  print the sub-array with a new line after each one.

=end
# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    generate_num_letter
  end
  def generate_num_letter
    letters = ["b","i","n","g","o"]
    @call_letter = letters.shuffle.pop
    @call_number = rand(1..100)
  end
  def call
    letter_number = @call_letter + @call_number.to_s
  end
  def check
    if @call_letter == "b"
      if @bingo_board[0].include?(@call_number)
        board_index = @bingo_board[0].find_index(@call_number)
        @bingo_board[0].delete(@call_number)
        @bingo_board[0].insert(board_index, "X")
      end
      elsif @call_letter == "i"
        if @bingo_board[1].include?(@call_number)
         board_index = @bingo_board.index(@call_number)
         @bingo_board[1].delete(@call_number)
         @bingo_board[1].insert(board_index, "X")
      end
      elsif @call_letter == "n"
        if @bingo_board[2].include?(@call_number)
          board_index = @bingo_board.index(@call_number)
         @bingo_board[2].delete(@call_number)
         @bingo_board[2].insert(board_index, "X")
      end
      elsif @call_letter == "g"
        if @bingo_board[3].include?(@call_number)
          board_index = @bingo_board.index(@call_number)
          @bingo_board[3].delete(@call_number)
          @bingo_board[3].insert(board_index, "X")
      end
      elsif @call_letter == "o"
        if @bingo_board[4].include?(@call_number)
          board_index = @bingo_board.index(@call_number)
          @bingo_board[4].delete(@call_number)
          @bingo_board[4].insert(board_index, "X")
      end
    end
    puts "#{@bingo_board[0]}"
    puts "#{@bingo_board[1]}"
    puts "#{@bingo_board[2]}"
    puts "#{@bingo_board[3]}"
    puts "#{@bingo_board[4]}"

  end

end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    generate_num_letter
  end

  def generate_num_letter
    letters = ["b","i","n","g","o"]
    @call_letter = letters.shuffle.pop
    @call_number = rand(1..100)
  end

  def call
    puts "The call is #{@call_letter.upcase} - #{@call_number.to_s}"
  end

=begin
Wasn't sure whether or not i needed to use an iteration, so i used one in the new check method. Below is a modified version of the initial solutions check method.
  def check
    if @call_letter == "b" && @bingo_board[0].include?(@call_number)
        column = 0
        replace(column)
      elsif @call_letter == "i" && @bingo_board[1].include?(@call_number)
        column = 1
        replace(column)
      elsif @call_letter == "n" && @bingo_board[21].include?(@call_number)
        column = 2
        replace(column)
      elsif @call_letter == "g" && @bingo_board[3].include?(@call_number)
        column = 3
        replace(column)
      elsif @call_letter == "o" && @bingo_board[4].include?(@call_number)
        column = 4
        replace(column)
     end
    show_board
  end
=end

#Created a new check method with a .each iteration.
  def check
    @bingo_board.each_with_index do |sub_array, index|
#The index is given to the check_column method. The index tells us which sub-array we're currently in. Checks if the current column is equal to the letter of the call AND checks if the number is in the sub-array. IF it is, then it will goto the replace method.
      if check_column(index) == @call_letter && @bingo_board[index].include?(@call_number)
        replace(index)
      end
    end
    show_board
  end
#the below is based on the column and index. Returns the letter of the column of the current sub-array the iteration is in. 0 = B, 1 = I, 2 = N, 3 = G, 4 = O.
  def check_column(column)
    if 0 == column
      "b"
    elsif 1 == column
      "i"
    elsif 2 == column
      "n"
    elsif 3 == column
      "g"
    elsif 4 == column
      "o"
   end
  end

#This method will delete the number and add a "X" to where the number was located.
  def replace(column)
    board_index = @bingo_board[column].find_index(@call_number)
    @bingo_board[column].delete(@call_number)
    @bingo_board[column].insert(board_index, "X")
  end

  def show_board
    puts "Your current board:"
    puts "B: #{@bingo_board[0]}"
    puts "I: #{@bingo_board[1]}"
    puts "N: #{@bingo_board[2]}"
    puts "G: #{@bingo_board[3]}"
    puts "O: #{@bingo_board[4]}"
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check


#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It wasn't as difficult as I thought it'd be. I broke it down into smaller steps and went from there. I think my pseudocode can use some work. I've seem some really good pseudocode that is descriptive and can be converted into code just by looking at it.

What are the benefits of using a class for this challenge?

Instance variables were definitely one of the variables that helped. I was able to call the variables in other methods. It felt more organized using a class as well.

How can you access coordinates in a nested array?

I was able to access the coordinates in the nested array by using index on the sub-array. It would look something like @bingo_board[0].index(num). This is one way to access coordinates in a nested array. I could've also had two each iterations and do it like that.

What methods did you use to access and modify the array?

I used delete and insert to modify the sub-arrays. Delete allowed me to remove the number from the sub-array and insert allowed me to put the X in where the number was previously.

How did you determine what should be an instance variable versus a local variable?

I determine what should be an instance variable by usage. If the instance variable is going to be used throughout the code and called in other methods, then I think it should be an instance variable. A local variable is something just set for that specific method. Like in my refactored solution, I have board_index in my replace method. The board_index will only be needed in the method itself so I wouldn't make it an instance variable.

What do you feel is most improved in your refactored solution?

I feel like the iteration that I added improved my refactored solution. It iterates through the sub-arrays and checks whether or not it matches with the letter then the number. If it does, it'll remove the number and add an "X". It's a lot DRYer as well. I separated some tasks into smaller methods and just called it within the check method.

=end