
def display_board(a=[" "," "," "," "," "," "," "," "," "])
  puts " #{a[0]} | #{a[1]} | #{a[2]} "
  puts "-----------"
  puts " #{a[3]} | #{a[4]} | #{a[5]} "
  puts "-----------"
  puts " #{a[6]} | #{a[7]} | #{a[8]} "
end


def input_to_index(ui)
  if ui.to_i == 0
    return -1
  end
  return (ui.to_i - 1)
end

def valid_move?(board, i)
  if board.size <= i || i < 0
    return false
  end

  if board[i] == 'X' || board[i] == 'O'
    return false
  else
    return true
  end
end

def move(board, i, player="X")
  # if valid_move?(board, i)
    board[i] = player
  # end
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  i = gets.strip
  # ask for input after failed validation
  i = input_to_index(i)
  while !valid_move?(board, i)
    puts "Please enter 1-9:"
    i = gets.strip
    # ask for input after failed validation
    i = input_to_index(i)
  end
  move(board, i)
  display_board(board)
end
