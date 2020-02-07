def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

####

def valid_move?(board, index)
  if index < 0 || index > 8
    false
  elsif position_taken?(board, index)
  false
  else
  true
end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == nil
    false
  else 
    nil
  end
end

####

def input_to_index(user_input)
 user_input.to_i-1
end

def move(board, index, value = "X")
  board[index] = value
end

###

def turn(board)
  puts "Please enter 1-9:"
  
  input = gets.strip
  
  index = input_to_index(input)
  
  if valid_move?(board, index) == true
   move(board, index, value = "X")
   display_board(board)
 else
   
   puts "invalid"
   turn(board)

  end
  
end