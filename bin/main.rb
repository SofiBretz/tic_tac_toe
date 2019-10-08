#!/usr/bin/env ruby

# frozen_string_literal: true

require_relative '../lib/game.rb'
require_relative '../lib/players.rb'
require_relative '../lib/board.rb'

# Welcome to players
  def welcome
    puts "Welcome Players!"
    puts "Tic Tac Toe is a game for 2 players."
    puts "The game is played on a cell that's 3 x 3"
    puts "If you are X, your friend? is O"
    puts "Players take turns putting their marks in empty squares"
    puts "The first player to get 3 marks in a row WIN"
    puts "When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie"
    puts "Make sure to move in diagonal, horizontal and vertical, otherwise it's going to be an invalid movement"
    puts "Good Luck! <_<"
  end
  welcome
    
  def display(cell)
    puts '---------'
    puts "#{cell[0][0]} | #{cell[0][1]} | #{cell[0][2]}"
    puts '---------'
    puts "#{cell[1][0]} | #{cell[1][1]} | #{cell[1][2]}"
    puts '---------'
    puts "#{cell[2][0]} | #{cell[2][1]} | #{cell[2][2]}"
    puts '---------'
  end

  def name_valid?(name)
    loop do
      valid = name.empty?
      return name unless valid
    end
  end
      
  def valid_element?(element)
    loop do
      arr = %w[X O]
      return element if arr.include? element
      puts "Wow! It should be x or o, stay focus *_*' "
      element = gets.chomp
    end
  end

  def info_players
    puts "\nOk! Player 1 give us ur name: "
    name = gets.chomp
    player1 = Player.new(name_valid?(name))
    puts "Which symbol you want? 'X' or 'O'"
    element = gets.chomp.upcase!
    player1.element = valid_element?(element)
    puts "Ok! Now is turn for Player 2"
    puts "Player 2 give us ur name: "
    name = gets.chomp
    player2 = Player.new(name_valid?(name))
    player2.element = player1.element == 'X' ? 'O' : 'X'
    [player1, player2]
    #puts "Let the game begin!" broken the logic why?
  end

players = info_players
player1 = players[0]
player2 = players[1]

# Movements and conditions of the game
loop do
  board = Board.new
  cell = board.cell
  display(cell)

  loop do
    begin
        puts "Ok, #{player1.name}, it`'`s your turn, select a number between 1-9"
        place = gets.chomp
        result = board.move(player1.element, place.to_i)
        display(result[2])
    rescue StandardError
      puts "Oh no! You have to select a number between 1-9 \n Remember to fill a blank space."
      retry
      end
    if result[0] == true
      puts "#{player1.name}, you won!"
      player1.score += 1
      puts "#{player1.name}, your score: #{player1.score}"
      puts "#{player2.name}, your score: #{player2.score}"
      break
    end
    if result[1] == 9
      puts "That`'`s a draw!"
      puts "#{player1.name}, your score: #{player1.score}"
      puts "#{player2.name}, your score: #{player2.score}"
      break
    end

    begin
      puts "Ok,#{player2.name}, it`'`s your turn, select a number between 1-9"
      place = gets.chomp
      result = board.move(player2.element, place.to_i)
      display(result[2])
    rescue StandardError
      puts "Oh no! You have to select a number between 1-9 \n Remember to fill a blank space."
      retry
    end

    next unless result[0] == true

    puts "#{player2.name}, you won!"
    player2.score += 1
    puts "#{player1.name}, your score: #{player1.score}"
    puts "#{player2.name}, your score: #{player2.score}"
    break
  end

  play_again = 'no'

  sleep 0.5
  puts 'GAME OVER'
  sleep 0.5

  puts 'Do you want a revenge? (yes/no)'
  break if gets.chomp == play_again
end