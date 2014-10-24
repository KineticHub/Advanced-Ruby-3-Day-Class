require_relative 'require'
class Position

  attr_accessor :cell, :neighbors

  def initialize(cell)
    @cell = cell
    @neighbors = []
  end

  def update_cell
    @cell.update
  end

  def check_neighbors
    sum_alive = 0
    @neighbors.each do |position|
      sum_alive += position.cell.current_state
    end
    @cell.next_state = ([2,3].include? sum_alive) ? Cell::ALIVE : Cell::DEAD
  end

  def position_symbol
    return '.' if @cell.current_state==Cell::DEAD else 'O'
  end

end