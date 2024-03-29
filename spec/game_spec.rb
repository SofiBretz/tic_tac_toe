# frozen_string_literal: true

require_relative '../lib/game.rb'

RSpec.describe WinGame do
  let(:cell) { [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
  let(:result) { WinGame.new(cell) }
  let(:horizontal) { [%w[x x x], [4, 5, 6], [7, 8, 9]] }
  let(:result_h) { WinGame.new(horizontal) }
  let(:horizontal) { [[1, 2, 3], %w[x x x], [7, 8, 9]] }
  let(:result_h) { WinGame.new(horizontal) }
  let(:horizontal) { [[1, 2, 3], [4, 5, 6], %w[x x x]] }
  let(:result_h) { WinGame.new(horizontal) }
  let(:vertical) { [['O', 2, 3], ['O', 5, 6], ['O', 8, 9]] }
  let(:result_v) { WinGame.new(vertical) }
  let(:vertical) { [[1, 'O', 3], [4, 'O', 6], [7, 'O', 9]] }
  let(:result_v) { WinGame.new(vertical) }
  let(:vertical) { [[1, 2, 'O'], [4, 5, 'O'], [7, 8, 'O']] }
  let(:result_v) { WinGame.new(vertical) }
  let(:diagonal) { [['X', 2, 3], [4, 'X', 6], [7, 8, 'X']] }
  let(:result_d) { WinGame.new(diagonal) }
  let(:diagonal) { [[1, 2, 'X'], [4, 'X', 6], ['X', 8, 9]] }
  let(:result_d) { WinGame.new(diagonal) }

  describe '#result.position' do
    it 'returns the result of the position of the element in the board' do
      expect(result.cell).to eql(cell)
    end
  end

  describe 'possible positon to win on the first row' do
    it 'returns true when the first row has 3 equal symbols on the horizontal' do
      expect(result_h.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the second row' do
    it 'returns true when the second row has 3 equal symbols on the horizontal' do
      expect(result_h.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the third row' do
    it 'returns true when the third row has 3 equal symbols on the horizontal' do
      expect(result_h.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the first column' do
    it 'returns true when the first column has 3 equal symbols on the vertical' do
      expect(result_v.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the second column' do
    it 'returns true when the second column has 3 equal symbols on the vertical' do
      expect(result_v.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the third column' do
    it 'returns true when the third column has 3 equal symbols on the vertical' do
      expect(result_v.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the left-right diagonal' do
    it 'returns true when all the 3 symbols on the left-right diagonal match' do
      expect(result_d.win_game).to eql(true)
    end
  end

  describe 'possible positon to win on the right-left diagonal' do
    it 'returns true when all the 3 symbols on the right-left diagonal match' do
      expect(result_d.win_game).to eql(true)
    end
  end
end

RSpec.describe Draw do
  let(:cell) { [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
  let(:result) { Draw.new(cell) }
  let(:draw_1) { [%w[X O X], %w[X O X], %w[O X O]] }
  let(:result_dr) { Draw.new(draw_1) }
  let(:draw_2) { [%w[O X O], %w[O X O], %w[X O X]] }
  let(:result_dr) { Draw.new(draw_2) }
  let(:draw_3) { [%w[X O X], %w[O X O], %w[O X O]] }
  let(:result_dr) { Draw.new(draw_3) }
  let(:draw_4) { [%w[O X O], %w[X O X], %w[X O X]] }
  let(:result_dr) { Draw.new(draw_4) }

  describe 'possible positon to draw' do
    it 'returns draw when there no winner' do
      expect(result_dr.win_game).to eql(false)
    end
  end

  describe 'possible positon to draw' do
    it 'returns draw when there no winner' do
      expect(result_dr.win_game).to eql(false)
    end
  end

  describe 'possible positon to draw' do
    it 'returns draw when there no winner' do
      expect(result_dr.win_game).to eql(false)
    end
  end

  describe 'possible positon to draw' do
    it 'returns draw when there no winner' do
      expect(result_dr.win_game).to eql(false)
    end
  end
end
