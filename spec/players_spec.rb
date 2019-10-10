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
end # last end
