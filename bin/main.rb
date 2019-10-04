# Welcome to players
def welcome
puts "Welcome Players!"
puts "Tic Tac Toe is a game for 2 players."
puts "The game is played on a grid that's 3 x 3"
puts "If you are X, your friend? is O"
puts "Players take turns putting their marks in empty squares"
puts "The first player to get 3 marks in a row WIN"
puts "When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie"
puts "Good Luck! <_<"
end

# Users input
def players_info
puts "Welcome to Tic-Tac-Toe"
puts "Are you ready?"

    puts "Ok! Player 1 give us ur name"
first_player = gets.chomp.capitalize!
    puts "#{first_player} you get the O"

    puts "Ok! Now is turn for Player 2"

    puts "Player 2 give us ur name"
second_player = gets.chomp.capitalize!
    puts "#{second_player} for you is X"

puts "Let the game begin!"
display
end

def display
    puts "\n       #{@board[0]} | #{@board[1]} | #{@board[2]} "

    puts '       ---------- '

    puts "       #{@board[3]} | #{@board[4]} | #{@board[5]} "

    puts '       ---------- '

    puts "       #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  


