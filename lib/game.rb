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
    left_diagonal || right_diagonal
  end

  def left_diagonal
    @cell[0][0] == @cell[1][1] && @cell[1][1] == @cell[2][2]
  end

  def right_diagonal
    @cell[2][0] == @cell[1][1] && @cell[1][1] == @cell[0][2]
  end

  def vertical
    vertical_one || vertical_two || vertical_three
  end

  def vertical_one
    @cell[0][0] == @cell[1][0] && @cell[1][0] == @cell[2][0]
  end

  def vertical_two
    @cell[0][1] == @cell[1][1] && @cell[1][1] == @cell[2][1]
  end

  def vertical_three
    @cell[0][2] == @cell[1][2] && @cell[1][2] == @cell[2][2]
  end

  def horizontal
    horizontal_one || horizontal_two || horizontal_three
  end

  def horizontal_one
    @cell[0][0] == @cell[0][1] && @cell[0][1] == @cell[0][2]
  end

  def horizontal_two
    @cell[1][0] == @cell[1][1] && @cell[1][1] == @cell[1][2]
  end

  def horizontal_three
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
    left_diagonal || right_diagonal
  end

  def left_diagonal
    @cell[0][0] == @cell[1][1] && @cell[1][1] == @cell[2][2]
  end

  def right_diagonal
    @cell[2][0] == @cell[1][1] && @cell[1][1] == @cell[0][2]
  end

  def vertical
    vertical_one || vertical_two || vertical_three
  end

  def vertical_one
    @cell[0][0] == @cell[1][0] && @cell[1][0] == @cell[2][0]
  end

  def vertical_two
    @cell[0][1] == @cell[1][1] && @cell[1][1] == @cell[2][1]
  end

  def vertical_three
    @cell[0][2] == @cell[1][2] && @cell[1][2] == @cell[2][2]
  end

  def horizontal
    horizontal_one || horizontal_two || horizontal_three
  end

  def horizontal_one
    @cell[0][0] == @cell[0][1] && @cell[0][1] == @cell[0][2]
  end

  def horizontal_two
    @cell[1][0] == @cell[1][1] && @cell[1][1] == @cell[1][2]
  end

  def horizontal_three
    @cell[2][0] == @cell[2][1] && @cell[2][1] == @cell[2][2]
  end
end
