def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i > 9 || position.to_i < 1
    false
  elsif board[position.to_i-1] == "X" || board[position.to_i-1] == "O"
    false
  else
    true
  end
end

def move(board, position, value = "X")
  position = position.to_i - 1
  board[position] = value
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  until valid_move?(board, position) == true
    puts "Invalid move. Please enter 1-9:"
    position = gets.strip
  end
  move(board,position, value = "X")
end  
