# frozen_string_literal: true

class WinGame
  attr_accessor :cell

  def initialize(cell)
    @cell = cell
  end

  def win_game
    diagonal || vertical || horizontal
  end

  private

  def diagonal
    @cell[0][0] == @cell[1][1] && @cell[1][1] == @cell[2][2] ||
      @cell[2][0] == @cell[1][1] && @cell[1][1] == @cell[0][2]
  end

  def vertical
    @cell[0][0] == @cell[1][0] && @cell[1][0] == @cell[2][0] ||
      @cell[0][1] == @cell[1][1] && @cell[1][1] == @cell[2][1] ||
      @cell[0][2] == @cell[1][2] && @cell[1][2] == @cell[2][2]
  end

  def horizontal
    @cell[0][0] == @cell[0][1] && @cell[0][1] == @cell[0][2] ||
      @cell[1][0] == @cell[1][1] && @cell[1][1] == @cell[1][2] ||
      @cell[2][0] == @cell[2][1] && @cell[2][1] == @cell[2][2]
  end
end

class Draw
  attr_accessor :cell

  def initialize(cell)
    @cell = cell
  end

  def win_game
    diagonal || vertical || horizontal
  end

  private

  def diagonal
    @cell[0][0] == @cell[1][1] && @cell[1][1] == @cell[2][2] ||
      @cell[2][0] == @cell[1][1] && @cell[1][1] == @cell[0][2]
  end

  def vertical
    @cell[0][0] == @cell[1][0] && @cell[1][0] == @cell[2][0] ||
      @cell[0][1] == @cell[1][1] && @cell[1][1] == @cell[2][1] ||
      @cell[0][2] == @cell[1][2] && @cell[1][2] == @cell[2][2]
  end

  def horizontal
    @cell[0][0] == @cell[0][1] && @cell[0][1] == @cell[0][2] ||
      @cell[1][0] == @cell[1][1] && @cell[1][1] == @cell[1][2] ||
      @cell[2][0] == @cell[2][1] && @cell[2][1] == @cell[2][2]
  end
end
