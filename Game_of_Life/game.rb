require_relative 'require'
class Game
  def initialize(height, width, steps)
    steps.times{
      board = Board.new(height, width)
      board.show_grid;
      puts '------------'
      sleep(0.2)
    }
  end
end