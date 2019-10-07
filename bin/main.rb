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
    
    def valid_name(name)
        loop do
          valid = name.empty?
          return name unless valid
        end
      end
      
      def valid_piece(piece)
        loop do
          arr = ["X", "O"]
          return piece if arr.include? piece
      
        puts "Wow! It should be x or o, stay focus *_*' "
          piece = gets.chomp.upcase!
        end
      end
      
    def display(grid)
        puts '---------'
        puts "#{grid[0][0]} | #{grid[0][1]} | #{grid[0][2]}"
        puts '---------'
        puts "#{grid[1][0]} | #{grid[1][1]} | #{grid[1][2]}"
        puts '---------'
        puts "#{grid[2][0]} | #{grid[2][1]} | #{grid[2][2]}"
        puts '---------'
      end

def players_info
    puts "Welcome to Tic-Tac-Toe"
    puts "Are you ready?"
    puts "Ok! Player 1 give us ur name: "
  name = gets.chomp
  player1 = Player.new(valid_name(name))
  puts "Which symbol you want? 'x' or 'o'"
  piece = gets.chomp
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

# loop do here 7/10/2019





=begin
class Game
    def initialize
      @game = GameInfo.new  
      @board = @game.init_board(9)
      @player1 = Player.new
      @player2 = Player.new
    end
end
=end

class Score
    # Score of the game 
    def score
        turn until @game.over?
        if @game.won?
        if @board[@game.won?.first] == 'X'
            puts "\nYou won! Congratulations, #{@player1.name}!"
        else
            puts "\nYou won! Congratulations, #{@player2.name}!"
        end
        elsif @game.draw?
        puts "\nIt's a draw! We recommend the rematch!"
        end
    end

    # End of the game
    def end_game
      puts "Thanks for playing Tic Tac Toe!"
    end
end



Welcome_Game.welcome
puts""
Players.players_info
puts""



