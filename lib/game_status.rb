# Helper Method
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
    # Middle row
  # ETC, an array for each win combination
]

def won?(board)
  WIN_COMBINATIONS.find do |x|
      board[x[0]] == board[x[1]] && 
      board[x[1]] == board[x[2]] && 
      position_taken?(board, x[0])
  end
end

def full?(board)
  board.none? {|x| x == " "}
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  end
end

def winner(board)
  if x = won?(board)
  board[x[0]]
end
  #binding.pry
end
