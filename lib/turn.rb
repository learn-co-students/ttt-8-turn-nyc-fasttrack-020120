board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  new_input = input.to_i - 1
  return new_input
end

def move(board, index, token = "X")
  board[index] = token
  return board
end

def valid_move?(board, index)
  def position_taken? (board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    else board[index] == "X" || board[index] == "O"
      return true
    end
  end

  def onboard(index)
    if index.between?(0,8) == true
      return true
    else
      return false
    end
  end

  if (position_taken?(board, index)) == false && (onboard(index) == true)
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  userinput = gets.strip
  index = input_to_index(userinput)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
