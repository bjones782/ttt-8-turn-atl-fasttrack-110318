def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)

def move(board, index, current_player)
  board[index] = current_player
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == NIL
    FALSE
    else (board[index]) == "X" || (board[index]) == "O"
   true
  end
end


def turn(board)
  puts "Please choose a number 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index)
    player_token = current_player(board)
    move(board, index, player_token)
    display_board(board)
  else
    turn(board)
  end
end