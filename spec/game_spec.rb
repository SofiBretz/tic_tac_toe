# frozen_string_literal: true

require_relative '../lib/game.rb'

RSpec.describe Game do
  let(:cell) { [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
  let(:result) { Game.new(cell) }

  describe '#result.position' do
    it 'returns the result of the position of the element in the board' do
      expect(result.cell).to eql(cell)
    end
  end

  describe 'possible positon to win on the first row' do
    let(:horizontal) { [%w[x x x], [4, 5, 6], [7, 8, 9]] }
    let(:result_h) { Game.new(horizontal) }
    it 'returns true when the first row has 3 equal symbols on the horizontal' do
      expect(result_h.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the second row' do
    let(:horizontal) { [[1, 2, 3], %w[x x x], [7, 8, 9]] }
    let(:result_h) { Game.new(horizontal) }
    it 'returns true when the second row has 3 equal symbols on the horizontal' do
      expect(result_h.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the third row' do
    let(:horizontal) { [[1, 2, 3], [4, 5, 6], %w[x x x]] }
    let(:result_h) { Game.new(horizontal) }
    it 'returns true when the third row has 3 equal symbols on the horizontal' do
      expect(result_h.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the first column' do
    let(:vertical) { [['O', 2, 3], ['O', 5, 6], ['O', 8, 9]] }
    let(:result_v) { Game.new(vertical) }
    it 'returns true when the first column has 3 equal symbols on the vertical' do
      expect(result_v.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the second column' do
    let(:vertical) { [[1, 'O', 3], [4, 'O', 6], [7, 'O', 9]] }
    let(:result_v) { Game.new(vertical) }
    it 'returns true when the second column has 3 equal symbols on the vertical' do
      expect(result_v.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the third column' do
    let(:vertical) { [[1, 2, 'O'], [4, 5, 'O'], [7, 8, 'O']] }
    let(:result_v) { Game.new(vertical) }
    it 'returns true when the third column has 3 equal symbols on the vertical' do
      expect(result_v.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the left-right diagonal' do
    let(:diagonal) { [['X', 2, 3], [4, 'X', 6], [7, 8, 'X']] }
    let(:result_d) { Game.new(diagonal) }
    it 'returns true when all the 3 symbols on the left-right diagonal match' do
      expect(result_d.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the right-left diagonal' do
    let(:diagonal) { [[1, 2, 'X'], [4, 'X', 6], ['X', 8, 9]] }
    let(:result_d) { Game.new(diagonal) }
    it 'returns true when all the 3 symbols on the right-left diagonal match' do
      expect(result_d.win_game).to eql(true)
    end
  end
end
