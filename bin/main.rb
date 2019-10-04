#!/usr/bin/env ruby
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


class Elements
    def initialize
      @game = GameInfo.new  
      @board = @game.init_board(9)
      @player1 = Player.new
      @player2 = Player.new
    end

    # Users input
    def players_info
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
    display
    end

    def display
        puts "\n     #{@board[0]} | #{@board[1]} | #{@board[2]} "

        puts '       ---------- '

        puts "       #{@board[3]} | #{@board[4]} | #{@board[5]} "

        puts '       ---------- '

        puts "       #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

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
    end

    # End of the game
    def end
    puts "Thanks for playing Tic Tac Toe!"
    end

end




