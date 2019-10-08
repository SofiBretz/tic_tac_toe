#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/game.rb'
require_relative '../lib/players.rb'
require_relative '../lib/board.rb'

# Welcome to players
  def welcome
    puts "Welcome Players!"
    puts "Tic Tac Toe is a game for 2 players."
    puts "The game is played on a grid that's 3 x 3"
    puts "If you are X, your friend? is O"
    puts "Players take turns putting their marks in empty squares"
    puts "The first player to get 3 marks in a row WIN"
    puts "When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie"
    puts "Make sure to move in diagonal, horizontal and vertical, otherwise it's going to be an invalid movement"
    puts "Good Luck! <_<"
  end
  welcome
    
  def display(grid)
    puts '---------'
    puts "#{grid[0][0]} | #{grid[0][1]} | #{grid[0][2]}"
    puts '---------'
    puts "#{grid[1][0]} | #{grid[1][1]} | #{grid[1][2]}"
    puts '---------'
    puts "#{grid[2][0]} | #{grid[2][1]} | #{grid[2][2]}"
    puts '---------'
  end

    def valid_name(name)
  loop do
    valid = name.empty?
    return name unless valid
  end
end
      
      def valid_piece(piece)
        loop do
          arr = %w[X O]
          return piece if arr.include? piece
      
        puts "Wow! It should be x or o, stay focus *_*' "
          piece = gets.chomp
        end
      end
          

def players_info
    puts "\nOk! Player 1 give us ur name: "
  name = gets.chomp
  player1 = Player.new(valid_name(name))
  puts "Which symbol you want? 'x' or 'o'"
  piece = gets.chomp.upcase!
  player1.piece = valid_piece(piece)
  puts "Ok! Now is turn for Player 2"
  puts "Player 2 give us ur name: "
  name = gets.chomp
  player2 = Player.new(valid_name(name))
  player2.piece = player1.piece == 'X' ? 'O' : 'X'
  [player1, player2]
  puts "Let the game begin!"
end


players = players_info
player1 = players[0]
player2 = players[1]


# Movements and conditions of the game
loop do
  board = Board.new
  grid = board.grid
  display(grid)

  loop do
    begin
        puts "Ok, #{player1}, it`'`s your turn, select a number between 1-9"
        place = gets.chomp
        result = board.move(player1.piece, place.to_i)
        display(result[2])
    rescue StandardError
      puts "Oh no! You have to select a number between 1-9 \n Remember to fill a blank space."
      retry
      end
    if result[0] == true
      puts "#{player1.name}, you won!"
      player1.amount += 1
      puts "#{player1.name}, your score: #{player1.amount}"
      puts "#{player2.name}, your score: #{player2.amount}"
      break
    end
    if result[1] == 9
      puts "That`'`s a draw!"
      puts "#{player1.name}, your score: #{player1.amount}"
      puts "#{player2.name}, your score: #{player2.amount}"
      break
    end

    begin
      puts "Ok,#{player2}, it`'`s your turn, select a number between 1-9"
      place = gets.chomp
      result = board.move(player2.piece, place.to_i)
      display(result[2])
    rescue StandardError
      puts "Oh no! You have to select a number between 1-9 \n Remember to fill a blank space."
      retry
    end

    next unless result[0] == true

    puts "#{player2.name}, you won!"
    player2.amount += 1
    puts "#{player1.name}, your score: #{player1.amount}"
    puts "#{player2.name}, your score: #{player2.amount}"
    break
  end

  play_again = 'n'

  sleep 0.5
  puts 'GAME OVER'
  sleep 0.5

  puts 'Do you want a revenge? (y/n)'
  break if gets.chomp == play_again
end








