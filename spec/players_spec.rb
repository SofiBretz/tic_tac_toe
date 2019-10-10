# frozen_string_literal: true

require_relative '../lib/players.rb'

RSpec.describe Player do
  let(:player) { Player.new('Player_name') }

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eql('Player_name')
    end
  end

  describe '#element' do
    it 'returns the choosen element' do
      expect(player.element).to eql(nil)
    end
  end

  describe '#element.choosen' do
    it 'Returns the element that the player created, in this case x' do
      player.element = 'x'
      expect(player.element).to eql('x')
    end
  end

  describe '#element.choosen' do
    it 'Returns the element that the player created, in this case o' do
      player.element = 'o'
      expect(player.element).to eql('o')
    end
  end

  describe '#score' do
    it 'returns the score of the players' do
      expect(player.score).to eql(0)
    end
  end
end
