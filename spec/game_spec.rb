require_relative '../lib/game.rb'

RSpec.describe Game do
    let(:cell) {[[1, 2, 3], [4, 5, 6], [7, 8, 9]]}
    let(:result) { Game.new(cell)}

    describe "#result.position" do
    it "returns the result of the position of the element in the board" do
     expect(result.cell).to eql(cell)
    end
  end

  describe "possible positon to win on the first row" do
    let(:horizontal) { [["x", "x", "x"], [4, 5, 6], [7, 8, 9]] }
    let(:result1) { Game.new(horizontal) }
    it 'returns true when the first row has 3 equal symbols on the horizontal' do
      expect(result1.win_game).to eql(true)
    end  
  end

  describe "possible positon to win on the second row" do
    let(:horizontal) { [[1, 2, 3], ["x", "x", "x"], [7, 8, 9]] }
    let(:result1) { Game.new(horizontal) }
    it 'returns true when the second row has 3 equal symbols on the horizontal' do
      expect(result1.win_game).to eql(true)
    end  
  end

  describe "possible positon to win on the third row" do
    let(:horizontal) { [[1, 2, 3], [4, 5, 6], ["x", "x", "x"]] }
    let(:result1) { Game.new(horizontal) }
    it 'returns true when the third row has 3 equal symbols on the horizontal' do
      expect(result1.win_game).to eql(true)
    end  
  end

























end #end line
