require 'minitest/autorun'
require_relative '../src/game'

class GameTest < Minitest::Test
  def test_new_game
    game = Game.new
    assert game.empty?
  end

  def test_play
    game = Game.new
    assert_equal 0, game.pieces
    game.play(1, 1)
    assert_equal 1, game.pieces
  end

  def test_get
    game = Game.new
    assert_nil game.get(1, 1)
    game.play(1, 1)
    assert_equal 'O', game.get(1, 1)
  end
end
