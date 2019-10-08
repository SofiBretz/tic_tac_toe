# frozen_string_literal: true

class Player
  attr_accessor :name, :element, :score

  def initialize(name)
    @name = name
    @element = nil
    @score = 0
  end
end
  
 