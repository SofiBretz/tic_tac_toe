#!/usr/bin/env ruby
# frozen_string_literal: true

class Welcome_Game
# Welcome to players
    def self.welcome
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
end

class Players
    # Users input
    def self.players_info
    puts "Welcome to Tic-Tac-Toe"
    puts "Are you ready?"

        puts "Ok! Player 1 give us ur name"
        @player1 = gets.chomp.capitalize!
        puts "#{@player1} you get the O"

        puts "Ok! Now is turn for Player 2"

        puts "Player 2 give us ur name"
        @player2 = gets.chomp.capitalize!
        puts "#{@player2} for you is X"

    puts "Let the game begin!"    
    end
end

class Board
    def display
        puts "\n     #{@board[0]} | #{@board[1]} | #{@board[2]} "

        puts '       ---------- '

        puts "       #{@board[3]} | #{@board[4]} | #{@board[5]} "

        puts '       ---------- '

        puts "       #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    #when the game is in process and It's the turn of the next player this sign appears:
    #puts "Now it's turn of player "
end

class Game
    def initialize
      @game = GameInfo.new  
      @board = @game.init_board(9)
      @player1 = Player.new
      @player2 = Player.new
    end

end

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



