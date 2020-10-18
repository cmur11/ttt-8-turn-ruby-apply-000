
board =[" "," "," "," "," "," "," "," "," "]


def display_board(board)
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end


def valid_move?(board,index)
if position_taken?(board,index) 
return false
else 
  return true
end
end

def move(board,index,player="X")
  board[index] = player
end

def position_taken?(board,index)
if board[index] == " " || board[index] == "" || board[index] == nil
  return false
else
  return true
end
end


#Helper Methods in lib/turn.rb
#Before defining #turn, you should define the following methods:

#display_board
#Should accept a board as an argument and print out the current state of the board for the user.

#valid_move?
#Should accept a board and an index from the user and return true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token.

#Hint: While not explicitly required by this lab, you might want to encapsulate the logic to check if a position is occupied in its own method, perhaps #position_taken?

#move
#This method should accept a board, an index from the user (which was converted from their raw input with input_to_index), and a token to mark that position with (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token