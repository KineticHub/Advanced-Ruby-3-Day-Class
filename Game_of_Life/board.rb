require_relative 'require'
class Board

  def initialize(height, width)
    @positions = Array.new(width) { Array.new(height) { Position.new(Cell.new([Cell::ALIVE, Cell::DEAD].sample)) } }
    @positions.each do |row|
      row.each do |position|
        setup_cell_neighbors(position)
      end
    end
  end

  def setup_cell_neighbors(position)
    [ [-1, 0], [1, 0], [-1, 1], [0, 1], [1, 1], [-1, -1], [0, -1], [1, -1] ].each do |pos|
      position.neighbors << @positions[pos[0]][pos[1]] unless nil
    end
  end

  def update_tick
    @positions.flatten.each do |position|
        position.update
    end
  end

  def next_tick
    @positions.flatten.each do |position|
        position.check_neighbors
    end
  end

  def show_grid
    @positions.flatten.each do |row|
      row.each do |position|
        print position.position_symbol
      end
      puts
    end
  end

end