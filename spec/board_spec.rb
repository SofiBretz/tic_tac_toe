require_relative '../lib/board.rb'

RSpec.describe Board do
    let(:board) { Board.new }
    describe "#Board" do
    it "shows cell interface" do
        expect(board.cell).to eql([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    end
end
end 
