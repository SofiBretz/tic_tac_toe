# frozen_string_literal: true

require_relative 'players.rb'
require_relative 'game.rb'

class Board
  attr_accessor :cell, :counter
  def initialize(cell = [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    @counter = 0
    @cell = cell
  end

  def move(element, place)
    if place <= 3
      @cell[0][@cell[0].index(place)] = element
    elsif place <= 6
      @cell[1][@cell[1].index(place)] = element
    else
      @cell[2][@cell[2].index(place)] = element
    end
    result = Game.new(@cell)
    result.win_game
    @counter += 1
    [result.win_game, @counter, @cell]
  end
end