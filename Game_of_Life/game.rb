require_relative 'require'
class Game
  def initialize(size, steps)
    board = Board.new(size)
  end
end