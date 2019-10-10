require_relative '../lib/board.rb'

RSpec.describe Board do
    let(:board) { Board.new }
    describe "#Board" do
    it "shows cell interface" do
        expect(board.cell).to eql([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    end
end

    describe "#move" do
    it "returns false on win_game when moved element is on a different cell that is supposed to be" do
        expect(board.move('o', 4)).to eql([false, 1, [[1, 2, 3], ['o', 5, 6], [7, 8, 9]]])
    end
end
    describe "#move" do
    it "returns true on win_game when moved element is on a correct cell that is supposed to be" do
        board_win = Board.new([[1, 'o', 'o'], [4, 5, 6], [7, 8, 9]])
        expect(board_win.move('o', 1)).to eql([true, 1, [%w[o o o], [4, 5, 6], [7, 8, 9]]])
    end
end




end #last end
