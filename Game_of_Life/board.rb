require_relative 'require'
class Board

  def initialize(size)
    @cells = Array.new(size) { Array.new(size) { Cell.new([Cell.ALIVE, Cell.DEAD].sample) } }
    puts @cells
  end

end