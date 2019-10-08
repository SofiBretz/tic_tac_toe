# frozen_string_literal: true

class Player
  attr_accessor :name, :piece, :amount

  def initialize(name)
    @name = name
    @piece = nil
    @amount = 0
  end
end
  
 