require_relative '../lib/game.rb'

RSpec.describe Game do
    let(:cell) {[[1, 2, 3], [4, 5, 6], [7, 8, 9]]}
    let(:result) { Game.new(cell)}
    describe "#result.position" do
    it "returns the result of the position of the element in the board" do
     expect(result.cell).to eql(cell)
    end
  end

























end #end line
